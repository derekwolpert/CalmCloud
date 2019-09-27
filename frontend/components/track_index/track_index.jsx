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
        } else if (this.props.match.path === "/trending") {
            return "Trending";
        } else if (this.props.match.path === "/new-uploads") {
            return "New Uploads";
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
                            <div className="track-index-sidebar-small-nav-inactive">
                                Favorites
                            </div>
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
                pauseTrack={this.props.pauseTrack}
                playing={this.props.playing}
                percent={this.props.percent}
                path={this.props.match.path}
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
                        <h1>{this.indexTitle()}
                            <button onClick={(() => (this.props.playing && (this.props.tracks[0].id === this.props.currentTrack)) ? this.props.pauseTrack() : this.props.changeTrack(this.props.tracks[0].id))} className="track-index-play-all">
                                <FontAwesomeIcon icon={faPlay} />
                                Play
                            </button>
                        </h1>
                        {indexItems}
                    </section>

                    <TrackIndexNav tracks={this.props.tracks} currentUserId={this.props.currentUser.id} />
                </section>
            </>
        );
    }
}

export default TrackIndex;