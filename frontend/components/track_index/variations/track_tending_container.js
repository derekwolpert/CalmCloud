import { connect } from 'react-redux';
import { fetchAllTracks } from '../../../actions/track_actions';
import { changeTrack, pauseTrack } from '../../../actions/footer_player_actions';
import { withRouter } from 'react-router-dom';
import TrackIndex from '../track_index';


const sortTracksByPlaycount = (tracks) => {
    return tracks.sort((a, b) => (a.play_count >= b.play_count) ? -1 : 1);
};


const mapStateToProps = (state) => {
    return {
        tracks: sortTracksByPlaycount(Object.values(state.entities.tracks)),
        users: state.entities.users,
        currentTrack: state.ui.currentTrack,
        percent: state.ui.percent,
        playing: state.ui.playing,
        currentUser: state.entities.users[state.session.currentUser.id]
    };
};

const mapDispatchToProps = dispatch => ({
    fetchAllTracks: () => dispatch(fetchAllTracks()),
    changeTrack: (trackId) => dispatch(changeTrack(trackId)),
    pauseTrack: () => dispatch(pauseTrack()),
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(TrackIndex));