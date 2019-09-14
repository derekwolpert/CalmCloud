import { connect } from 'react-redux';
import { createTrack } from '../../actions/track_actions';
import { Link, Redirect, withRouter } from 'react-router-dom';
import TrackUploadForm from './track_upload_form';

const mapStateToProps = state => ({
    currentUser: state.entities.users[state.session.currentUser.id],
});

const mapDispatchToProps = dispatch => ({
    createTrack: (track) => dispatch(createTrack(track)),
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(TrackUploadForm));