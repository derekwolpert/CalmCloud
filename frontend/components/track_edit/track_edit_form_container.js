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
    
    const currentUsername = state.session.currentUser.username;
    const currentUser = currentUsername ? state.entities.users[currentUsername] : null;

    return {
        track: track(),
        currentUser: currentUser,
        currentTrack: state.ui.currentTrack,
        currentUserTracks: (currentUser && track()) ? Object.values(state.entities.tracks).filter((otherTrack) => ((otherTrack.user_id === currentUser.id) && otherTrack.id !== track().id)).map(track => track.title.toLowerCase()) : [],
    };
};

const mapDispatchToProps = dispatch => ({
    fetchTrack: (username, title) => dispatch(fetchTrack(username, title)),
    deleteTrack: trackId => dispatch(deleteTrack(trackId)),
    updateTrack: (username, title, track) => dispatch(updateTrack(username, title, track)),
    removeCurrentTrack: () => dispatch(removeCurrentTrack()),
    fetchCurrentUser: (username) => dispatch(fetchCurrentUser(username))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(TrackEditForm));