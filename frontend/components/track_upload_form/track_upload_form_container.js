import { connect } from 'react-redux';
import { createTrack } from '../../actions/track_actions';
import { Link, Redirect, withRouter } from 'react-router-dom';
import TrackUploadForm from './track_upload_form';

const mapStateToProps = state => {

};

const mapDispatchToProps = dispatch => ({
    createTrack: (track) => dispatch(createTrack(track)),
});

export default withRouter(connect(null, mapDispatchToProps)(TrackUploadForm));