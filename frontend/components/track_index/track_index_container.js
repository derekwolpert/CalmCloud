import { connect } from 'react-redux';
import { fetchAllTracks } from '../../actions/track_actions';
import { changeTrack, pauseTrack } from '../../actions/footer_player_actions';
import TrackIndex from './track_index';

const mapStateToProps = (state) => {
    return {
        tracks: Object.values(state.entities.tracks),
        users: state.entities.users,
        currentTrack: state.ui.currentTrack,
        playing: state.ui.playing
    };
};

const mapDispatchToProps = dispatch => ({
    fetchAllTracks: () => dispatch(fetchAllTracks()),
    changeTrack: (trackId) => dispatch(changeTrack(trackId)),
    pauseTrack: () => dispatch(pauseTrack()),
});

export default connect(mapStateToProps, mapDispatchToProps)(TrackIndex);