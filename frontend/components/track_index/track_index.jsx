import React from 'react';
import { Link } from 'react-router-dom';
import TrackIndexItem from './track_index_item';
import TrackIndexSidebar from './track_index_sidebar';
import TrackIndexNav from './track_index_footer_nav';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faPlay, faCloud } from '@fortawesome/free-solid-svg-icons';

class TrackIndex extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            large: null,
            loaded: false,
        };
        this.handleIndexSize = this.handleIndexSize.bind(this);
        this.smallSidebar = this.smallSidebar.bind(this);
        this.indexTitle = this.indexTitle.bind(this);
        this.findUser = this.findUser.bind(this);
    }

    componentDidMount() {
        window.scrollTo(0, 0);
        this.props.fetchAllTracks()
            .then(() => {
                this.setState({
                    loaded: true
                });
            });
        this.setState({
            large: window.innerWidth >= 1320,
        });
        window.addEventListener('resize', this.handleIndexSize);
        if (this.props.match.path === "/") {
            document.title = "Your Feed | CalmCloud";
        } else if (this.props.match.path === "/trending") {
            document.title = "Trending | CalmCloud";
        } else if (this.props.match.path === "/new-uploads") {
            document.title = "New Uploads | CalmCloud";
        } else if (this.props.match.path === "/favorites") {
            document.title = "Favorites | CalmCloud";
        }
    }

    componentWillUnmount() {
        window.removeEventListener('resize', this.handleIndexSize);
    }

    handleIndexSize() {
        if ((window.innerWidth < 1320) && this.state.large) {
            this.setState({
                large: false,
            });
        } else if ((window.innerWidth >= 1320) && !this.state.large) {
            this.setState({
                large: true,
            });
        }
    }

    indexTitle() {
        if (this.props.match.path === "/") {
            return "Feed";
        } else if (this.props.match.path === "/trending") {
            return "Trending";
        } else if (this.props.match.path === "/new-uploads") {
            return "New Uploads";
        } else if (this.props.match.path === "/favorites") {
            return "Favorites";
        }
    }

    smallSidebar() {
        return (
            <section className="track-index-sidebar-small">
                <div className="track-index-sidebar-small-container">
                    <nav>
                        <div className="track-index-sidebar-small-nav-group">
                            <Link to="/" className={`track-index-sidebar-small-nav-${this.props.match.path === "/" ? "active" : "inactive"}`} >
                                Feed
                            </Link>
                            <Link to="/new-uploads" className={`track-index-sidebar-small-nav-${this.props.match.path === "/new-uploads" ? "active" : "inactive"}`} >
                                New Uploads
                            </Link>
                        </div>

                        <div className="track-index-sidebar-small-nav-bar" />

                        <div className="track-index-sidebar-small-nav-group">
                            <Link to="/favorites" className={`track-index-sidebar-small-nav-${this.props.match.path === "/favorites" ? "active" : "inactive"}`} >
                                Favorites
                            </Link>
                        </div>

                        <div className="track-index-sidebar-small-nav-bar" />

                        <div className="track-index-sidebar-small-nav-group">
                            <Link to="/trending" className={`track-index-sidebar-small-nav-${this.props.match.path === "/trending" ? "active" : "inactive"}`}>
                                Trending
                            </Link>
                        </div>

                    </nav>
                </div>
            </section>
        )
    }

    findUser(userId) {
        for (let user in this.props.users) {
            if (this.props.users[user].id === userId) {
                return this.props.users[user];
            }
        }
    }

    render() {
        const indexItems = this.props.tracks.map( (track, idx) => (
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
                />) );
        
        return (
            <>
                {this.state.large ? null : this.smallSidebar()}
                <section className="track-index-inner-container" style={{ width: this.state.large ? 1300 : 1080, padding: this.state.large ? "30px 0" : "20px 0 30px" }}>
                    {this.state.large ?
                    <TrackIndexSidebar
                        currentUser={this.props.currentUser}
                        path={this.props.match.path}
                    /> : null }
                    <section className="track-index-track-container">
                        {((this.props.currentUser.favorites.length === 0) && (this.props.match.path === "/favorites")) ?
                            <>
                                <h1>{this.indexTitle()}</h1> 
                                <div className="track-index-no-favorites-message">
                                    When you favorite uploads you can come back and find them here.
                                </div>
                            </>
                            :
                            <>
                                <h1>{this.indexTitle()}
                                    { this.state.loaded ?
                                        <button onClick={(() => { this.props.playing && (this.props.tracks[0].id === this.props.currentTrack) ? this.props.pauseTrack() : this.props.changeTrack(this.props.tracks[0].id)})} className="track-index-play-all">
                                            <FontAwesomeIcon icon={faPlay} />
                                            Play
                                        </button>
                                        : <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
                                    }
                                </h1>
                                {indexItems}
                                { this.props.tracks.length > 0 ? <span className="track-index-bottom-cloud"><FontAwesomeIcon icon={faCloud} /></span> : null }
                            </>}
                    </section>

                    <TrackIndexNav
                        currentUser={this.props.currentUser}
                        totalPlaycounts={this.props.totalPlaycounts}
                        totalUploads={this.props.totalUploads} />
                </section>
            </>
        );
    }
}

export default TrackIndex;