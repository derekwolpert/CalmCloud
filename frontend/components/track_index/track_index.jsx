import React from 'react';
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

    smallSidebar() {
        return (
            <section className="track-index-sidebar-small">
                <div className="track-index-sidebar-small-container">
                    <nav>
                        <div className="track-index-sidebar-small-nav-group">
                            <div className={`track-index-sidebar-small-nav-${this.props.match.path === "/" ? "active" : "inactive"}`} >
                                Feed
                                        </div>
                            <div className="track-index-sidebar-small-nav-inactive">
                                New Shows
                                        </div>
                        </div>

                        <div className="track-index-sidebar-small-nav-bar" />

                        <div className="track-index-sidebar-small-nav-group">
                            <div className="track-index-sidebar-small-nav-inactive">
                                Favorites
                                        </div>
                        </div>

                        <div className="track-index-sidebar-small-nav-bar" />

                        <div className="track-index-sidebar-small-nav-group">
                            <div className="track-index-sidebar-small-nav-inactive">
                                Trending
                                        </div>
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

        const indexItems = this.props.tracks.slice().reverse().map( track => (
            <TrackIndexItem
                key={track.id}
                track={track}
                user={this.props.users[track.user_id]}
                changeTrack={this.props.changeTrack}
                currentTrack={this.props.currentTrack}
                pauseTrack={this.props.pauseTrack}
                playing={this.props.playing}
                percent={this.props.percent}
                trackIndexItemHeader={this.props.match.path === "/"}
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
                        <h1>Feed
                            <button onClick={(() => this.props.changeTrack(this.props.tracks[0].id))} className="track-index-play-all">
                                <FontAwesomeIcon icon={faPlay} />
                                Play all
                            </button>
                        </h1>
                        {indexItems}
                    </section>

                    <TrackIndexNav />
                </section>
            </>
        );

    }
}

export default TrackIndex;