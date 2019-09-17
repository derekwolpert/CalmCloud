import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { fetchTrack, deleteTrack, updateTrack } from '../../actions/track_actions';
import TrackEditForm from './track_edit_form';
import { removeCurrentTrack } from "../../actions/footer_player_actions";

const mapStateToProps = (state, ownProps) => {
    const defaultTrack = { id: "", title: "", description: "", trackArtworkUrl: "", user_id: ""}
    const track = state.entities.tracks[ownProps.match.params.trackId] || defaultTrack;
    const user = track ? state.entities.users[track.user_id] : null;
    return {
        track: track,
        user: user,
        currentUser: state.entities.users[state.session.currentUser.id],
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