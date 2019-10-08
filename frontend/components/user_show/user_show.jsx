import React from 'react';
import { Link } from 'react-router-dom';
import TrackIndexItem from "../track_index/track_index_item";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faPlay, faCloud } from '@fortawesome/free-solid-svg-icons';


class UserShow extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            loaded: false,
        };
        this.handleContent = this.handleContent.bind(this);
        this.findUser = this.findUser.bind(this);
    }

    componentDidMount() {
        window.scrollTo(0, 0);
        this.props.fetchUser(this.props.match.params.username).then(() => {
            this.setState({
                loaded: true
            });
        });
        if (this.props.user) document.title = `${this.props.user.display_name} | CalmCloud`;
    }

    componentDidUpdate(prevProps) {
        if (this.props.match.params.username !== prevProps.match.params.username) {
            document.title = `${this.props.user.display_name} | CalmCloud`;
            window.scrollTo(0, 0);
        }

        if (this.props.currentUser && !prevProps.currentUser) {
            this.props.fetchUser(this.props.match.params.username);
        }
    }

    handleContent(items) {

        if ((this.props.match.path === "/:username") || (this.props.match.path === "/:username/uploads")) {
            return (
                <section className="user-show-uploads">
                    <h1>Uploads</h1>
                    {items}
                    {this.props.tracks.length > 0 ? <span className="track-index-bottom-cloud"><FontAwesomeIcon icon={faCloud} /></span> : null}
                </section>
            )
        }
        if (this.props.match.path === "/:username/favorites") {
            return (
                <section className="user-show-favorites">
                    <h1>Favorites</h1>
                    {items}
                    {this.props.favoriteTracks.length > 0 ? <span className="track-index-bottom-cloud"><FontAwesomeIcon icon={faCloud} /></span> : null}
                </section>
            )
        }
    }

    findUser(userId) {
        for (let user in this.props.users) {
            if (this.props.users[user].id === userId) {
                return this.props.users[user];
            }
        }
    }

    render() {
        if (this.props.user === null) {
            return <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
        }

        if (this.props.user.favorites === undefined) {
            return <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
        }

        if ((this.props.match.path === "/:username") || (this.props.match.path === "/:username/uploads")) {
            if (this.props.tracks === null) {
                return <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
            }
            if (this.props.tracks.includes(undefined)) {
                return <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
            }
        }

        if (this.props.match.path === "/:username/favorites") {
            if (this.props.favoriteTracks === null) {
                return <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
            }
            if (this.props.favoriteTracks.includes(undefined)) {
                return <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
            }
        }

        const tracks = (this.props.match.path === "/:username/favorites") ? this.props.favoriteTracks : this.props.tracks;

        const indexItems = tracks.map((track, idx) => (
            <TrackIndexItem
                key={track.id}
                track={track}
                position={idx + 1}
                user={this.findUser(track.user_id)}
                changeTrack={this.props.changeTrack}
                currentTrack={this.props.currentTrack}
                currentUser={this.props.currentUser}
                pauseTrack={this.props.pauseTrack}
                playing={this.props.playing}
                percent={this.props.percent}
                path={this.props.match.path}
                createFavoriteTrack={this.props.createFavoriteTrack}
                deleteFavoriteTrack={this.props.deleteFavoriteTrack}
                fetchCurrentUser={this.props.fetchCurrentUser}
                openModal={this.props.openModal}
            />));

        return (
            this.state.loaded ?
                <> 
                    <div className="user-show-profile-header-container">
                        <section className="user-show-profile-header">
                            <div className="user-show-profile-header-inner-container">
                                <Link to={`/${this.props.user.username}`}>
                                    <div className="user-show-profile-pic-container">
                                        <img src="user-show-profile-pic" src={this.props.user.userPictureUrl ? this.props.user.userPictureUrl : window.defaultAvatar} />
                                    </div>
                                </Link>
                                <div className="user-show-username">
                                    <h1>{this.props.user.display_name}</h1>
                                    <h2>{this.props.user.subscribers.length} Followers</h2>
                                </div>
                                <div className="user-show-profile-navigation">
                                    <ul className="user-show-nav-tabs">
                                        <li>
                                            <Link className={`user-show-nav-tab${((this.props.match.path === "/:username") || (this.props.match.path === "/:username/uploads")) ? "-active" : ""}`}
                                                to={`/${this.props.user.username}/uploads`}>
                                                <b>{this.props.tracks.length}</b>
                                                <span>Uploads</span>
                                            </Link>
                                        </li>
                                        <li>
                                            <Link className={`user-show-nav-tab${(this.props.match.path === "/:username/favorites") ? "-active" : ""}`}
                                                to={`/${this.props.user.username}/favorites`}>
                                                <b>{this.props.user.favorites.length}</b>
                                                <span>Favorites</span>
                                            </Link>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </section>
                    </div>
                    <div className="user-show-content">
                        <div className="user-show-inner-container">
                            {this.handleContent(indexItems)}
                        </div>
                    </div>
                </>
                : 
                <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
        )
    } 
}

export default UserShow;