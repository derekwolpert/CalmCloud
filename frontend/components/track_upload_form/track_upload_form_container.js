import { connect } from 'react-redux';
import { createTrack } from '../../actions/track_actions';
import { fetchCurrentUser } from '../../actions/session_actions';
import { Link, Redirect, withRouter } from 'react-router-dom';
import TrackUploadForm from './track_upload_form';

const mapStateToProps = state => {
    const currentUsername = state.session.currentUser.username;
    const currentUser = currentUsername ? state.entities.users[state.session.currentUser.username] : null;
    return {
        currentUsername: currentUsername,
        currentUser: currentUser,
        currentUserTracks: currentUser ? Object.values(state.entities.tracks).filter((track) => (track.user_id === currentUser.id)).map(track => track.title.toLowerCase()) : [],
    };
};

const mapDispatchToProps = dispatch => ({
    createTrack: (track) => dispatch(createTrack(track)),
    fetchCurrentUser: (username) => dispatch(fetchCurrentUser(username))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(TrackUploadForm));