import React from 'react';
import TrackIndexItem from './track_index_item';
import TrackIndexSidebar from './track_index_sidebar';

class TrackIndex extends React.Component {
    constructor(props) {
        super(props);
    }


    componentDidMount() {
        this.props.fetchAllTracks();
    }


    render() {
        const indexItems = this.props.tracks.map( track =>  (
            <TrackIndexItem
                key={track.id}
                track={track}
                user={this.props.users[track.user_id]}
                changeTrack={this.props.changeTrack}
                currentTrack={this.props.currentTrack}
                pauseTrack={this.props.pauseTrack}
                playing={this.props.playing}
                />) );

        return (
            <section className="track-index-inner-container">
                <TrackIndexSidebar
                    currentUser={this.props.currentUser}
                    path={this.props.match.path}
                />
                <section className="track-index-track-container">
                    <h1>Feed</h1>
                    {indexItems}
                </section>

            </section>
        );

    }
}

export default TrackIndex;