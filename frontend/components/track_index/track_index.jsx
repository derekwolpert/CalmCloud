import React from 'react';
import TrackIndexItem from './track_index_item';
import TrackIndexSidebar from './track_index_sidebar';
import TrackIndexNav from './track_index_footer_nav';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faPlay } from '@fortawesome/free-solid-svg-icons';



class TrackIndex extends React.Component {
    constructor(props) {
        super(props);
    }


    componentDidMount() {
        this.props.fetchAllTracks();
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
                trackIndexItemHeader={this.props.match.path === "/"}
                />) );

        return (
            <section className="track-index-inner-container">
                <TrackIndexSidebar
                    currentUser={this.props.currentUser}
                    path={this.props.match.path}
                />
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
        );

    }
}

export default TrackIndex;