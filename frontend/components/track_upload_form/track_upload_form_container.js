import { connect } from 'react-redux';
import { createTrack } from '../../actions/track_actions';
import TrackUploadForm from './track_upload_form';

const mapStateToProps = state => {

};

const mapDispatchToProps = dispatch => ({
    createTrack: (track) => dispatch(createTrack(track)),
});

export default connect(null, mapDispatchToProps)(TrackUploadForm);