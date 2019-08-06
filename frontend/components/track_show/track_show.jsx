import React from 'react';

class TrackShow extends React.Component {

    componentDidMount() {
        this.props.fetchTrack(this.props.match.params.trackId);
    }

    render() {
        if (this.props.track) {
            return (
                <div className="track_show_container">
                    <div>ID: {this.props.track.id}</div>
                    <div>USER_ID: {this.props.track.user_id}</div>
                    <div>TITLE: {this.props.track.title}</div>
                    <div>DESC: {this.props.track.description}</div>
                    <div>LENGTH: {this.props.track.track_length}</div>
                    <div>PLAY_COUNT: {this.props.track.play_count}</div>
                    {/* <div>{this.props.track.background_color}</div> */}
                    <div>CREATED_AT: {(new Date(this.props.track.created_at)).toTimeString()}</div>
                    {/* <audio controls src={this.props.track.audioTrackUrl} id="track_showpage_audio_player" /> */}
                </div>
            )
        }
        return null
    }
}

export default TrackShow