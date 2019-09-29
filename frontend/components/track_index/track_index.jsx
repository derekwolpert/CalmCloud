import React from 'react';
import { Link } from 'react-router-dom';
import TrackIndexItem from './track_index_item';
import TrackIndexSidebar from './track_index_sidebar';
import TrackIndexNav from './track_index_footer_nav';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faPlay } from '@fortawesome/free-solid-svg-icons';



class TrackIndex extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            large: null,
        };
        this.handleIndexSize = this.handleIndexSize.bind(this);
        this.smallSidebar = this.smallSidebar.bind(this);
        this.indexTitle = this.indexTitle.bind(this);
    }

    componentDidMount() {
        window.scrollTo(0, 0);
        this.props.fetchAllTracks();
        this.setState({
            large: window.innerWidth >= 1320,
        });
        window.addEventListener('resize', this.handleIndexSize);
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
        } else if (this.props.match.path === "/tracks/trending") {
            return "Trending";
        } else if (this.props.match.path === "/tracks/new-uploads") {
            return "New Uploads";
        } else if (this.props.match.path === "/tracks/favorites") {
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
                            <Link to="/tracks/new-uploads" className={`track-index-sidebar-small-nav-${this.props.match.path === "/tracks/new-uploads" ? "active" : "inactive"}`} >
                                New Uploads
                            </Link>
                        </div>

                        <div className="track-index-sidebar-small-nav-bar" />

                        <div className="track-index-sidebar-small-nav-group">
                            <Link to="/tracks/favorites" className={`track-index-sidebar-small-nav-${this.props.match.path === "/tracks/favorites" ? "active" : "inactive"}`} >
                                Favorites
                            </Link>
                        </div>

                        <div className="track-index-sidebar-small-nav-bar" />

                        <div className="track-index-sidebar-small-nav-group">
                            <Link to="/tracks/trending" className={`track-index-sidebar-small-nav-${this.props.match.path === "/tracks/trending" ? "active" : "inactive"}`}>
                                Trending
                            </Link>
                        </div>

                    </nav>
                </div>
            </section>
        )
    }

    render() {

        if(!this.props.tracks) {
            this.props.fetchAllTracks();
        }

        const indexItems = this.props.tracks.map( (track, idx) => (
            <TrackIndexItem
                key={track.id}
                track={track}
                position={idx + 1}
                user={this.props.users[track.user_id]}
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
                        {((this.props.currentUser.favorites.length === 0) && (this.props.match.path === "/tracks/favorites")) ?
                            <>
                                <h1>{this.indexTitle()}</h1> 
                                <div className="track-index-no-favorites-message">
                                    When you favorite uploads you can come back and find them here.
                                </div>
                            </>
                            :
                            <>
                                <h1>{this.indexTitle()}
                                    <button onClick={(() => { if (this.props.tracks.length > 0) ((this.props.playing && (this.props.tracks[0].id === this.props.currentTrack)) ? this.props.pauseTrack() : this.props.changeTrack(this.props.tracks[0].id))})} className="track-index-play-all">
                                        <FontAwesomeIcon icon={faPlay} />
                                        Play
                                    </button>
                                </h1>
                                {indexItems}
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