import React from 'react';

class TrackIndex extends React.Component {
    constructor(props) {
        super(props);
        this.formatIndex = this.formatIndex.bind(this);
    }


    componentDidMount() {
        this.props.fetchAllTracks();
    }

    formatIndex() {
        // return (
        //     <div className="index-container">
        //         {this.props.tracks.map((track) => {
        //             return (
        //                 <div className={`track_index_container-${track.id}`}>
        //                     <div>ID: {track.id}</div>
        //                     <div>USER_ID: {track.user_id}</div>
        //                     <div>TITLE: {track.title}</div>
        //                     <div>DESC: {track.description}</div>
        //                     <div>LENGTH: {track.track_length}</div>
        //                     <div>PLAY_COUNT: {track.play_count}</div>
        //                     {/* <div>{track.background_color}</div> */}
        //                     <div>CREATED_AT: {(new Date(track.created_at)).toTimeString()}</div>
        //                     {/* <audio controls src={track.audioTrackUrl} id="track_showpage_audio_player" /> */}
        //                 </div>
        //                 )
        //             }
        //         )}
        //     </div>
        // )
    }

    render() {

        // if (this.props.tracks) {
        //     debugger
        //     return (<div>{this.formatIndex}</div>)
        // }
        return null
    }
}

export default TrackIndex;