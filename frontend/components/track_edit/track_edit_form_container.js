import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { fetchTrack, deleteTrack, updateTrack } from '../../actions/track_actions';
import TrackEditForm from './track_edit_form';
import { removeCurrentTrack } from "../../actions/footer_player_actions";

const mapStateToProps = (state, ownProps) => {
    const track = state.entities.tracks[ownProps.match.params.trackId];
    return {
        track: track,
        currentUser: state.session.currentUser.id,
        currentTrack: state.ui.currentTrack,
    };
};

const mapDispatchToProps = dispatch => ({
    fetchTrack: id => dispatch(fetchTrack(id)),
    deleteTrack: trackId => dispatch(deleteTrack(trackId)),
    updateTrack: track => dispatch(updateTrack(track)),
    removeCurrentTrack: () => dispatch(removeCurrentTrack())
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(TrackEditForm)); 