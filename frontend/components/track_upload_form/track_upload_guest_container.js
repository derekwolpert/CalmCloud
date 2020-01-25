import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { openModal } from '../../actions/modal_actions';
import TrackUploadGuest from './track_upload_guest';

const mapDispatchToProps = dispatch => ({
    openModal: modal => dispatch(openModal(modal))
});

export default withRouter(connect(null, mapDispatchToProps)(TrackUploadGuest));