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
            activeTab: "uploads"
        };
        this.handleProfileTab = this.handleProfileTab.bind(this);
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
        if (this.props.user !== prevProps.user) document.title = `${this.props.user.display_name} | CalmCloud`;
    }

    handleProfileTab(tab) {
        if (tab === "uploads") {
            this.setState({
                activeTab: "uploads"
            });
        }
        if (tab === "favorites") {
            this.setState({
                activeTab: "favorites"
            });
        }
    }

    render() {

        const profileItems = this.props.tracks.map((track, idx) => (
            <TrackIndexItem
                key={track.id}
                track={track}
                position={idx + 1}
                user={this.props.user}
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
            />));

        return (
            this.state.loaded ?
                <> 
                    <div className="user-show-profile-header-container">
                        <section className="user-show-profile-header">
                            <div className="user-show-profile-header-inner-container">
                                <Link to={`/${this.props.user.username}`}>
                                    <div className="user-show-profile-pic-container">
                                        <img src="user-show-profile-pic" src={this.props.user.userPictureUrl} />
                                    </div>
                                </Link>
                                <div className="user-show-username">
                                    <h1>{this.props.user.display_name}</h1>
                                    <h2>{this.props.user.subscribers.length} Followers</h2>
                                </div>
                                <div className="user-show-profile-navigation">
                                    <ul className="user-show-nav-tabs">
                                        <li>
                                            <div className={`user-show-nav-tab${this.state.activeTab === "uploads" ? "-active" : ""}`}
                                                onClick={() => this.handleProfileTab("uploads")}>
                                                <b>{this.props.tracks.length}</b>
                                                <span>Uploads</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div className={`user-show-nav-tab${this.state.activeTab === "favorites" ? "-active" : ""}`}
                                                onClick={() => this.handleProfileTab("favorites")}>
                                                <b>{this.props.user.favorites.length}</b>
                                                <span>Favorites</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </section>
                    </div>
                    <div className="user-show-content">
                        
                        <div className="user-show-inner-container">
                            <section className="user-show-tracks">
                                <h1>Uploads</h1>
                                {profileItems}
                                {this.props.tracks.length > 0 ? <span className="track-index-bottom-cloud"><FontAwesomeIcon icon={faCloud} /></span> : null}
                            </section>
                        </div>
                    </div>
                </>
                : 
                <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
        )
    } 
}

export default UserShow;