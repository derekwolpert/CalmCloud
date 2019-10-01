import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { fetchTrack, deleteTrack, updateTrack } from '../../actions/track_actions';
import { fetchCurrentUser } from '../../actions/session_actions';
import TrackEditForm from './track_edit_form';
import { removeCurrentTrack } from "../../actions/footer_player_actions";

const mapStateToProps = (state, ownProps) => {

    const track = () => {
        for (let track in state.entities.tracks) {
            if (state.entities.tracks[track].title === ownProps.match.params.title) {
                return state.entities.tracks[track];
            }
        }
        return null;
    };
    
    const currentUserId = state.session.currentUser.username;

    return {
        track: track(),
        currentUser: currentUserId ? state.entities.users[currentUserId] : null,
        currentTrack: state.ui.currentTrack,
    };
};

const mapDispatchToProps = dispatch => ({
    fetchTrack: (username, title) => dispatch(fetchTrack(username, title)),
    deleteTrack: trackId => dispatch(deleteTrack(trackId)),
    updateTrack: (username, track) => dispatch(updateTrack(username, track)),
    removeCurrentTrack: () => dispatch(removeCurrentTrack()),
    fetchCurrentUser: (username) => dispatch(fetchCurrentUser(username))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(TrackEditForm));