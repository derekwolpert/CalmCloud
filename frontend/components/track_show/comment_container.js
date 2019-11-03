import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import Comment from './comment';
import { createComment, deleteComment } from "../../actions/comment_actions";
import { fetchTrack } from '../../actions/track_actions';
import { openModal } from '../../actions/modal_actions';
import { fetchCurrentUser } from '../../actions/session_actions';

const mapStateToProps = (state, ownProps) => {
    return ({
        comment: ownProps.comment,
        comments: ownProps.comments,
        track: ownProps.track,
        currentUser: ownProps.currentUser,
        commentUsers: ownProps.commentUsers
    });
};

const mapDispatchToProps = dispatch => ({
    createComment: comment => dispatch(createComment(comment)),
    deleteComment: commentId => dispatch(deleteComment(commentId)),
    fetchTrack: (username, title) => dispatch(fetchTrack(username, title)),
    fetchCurrentUser: (username) => dispatch(fetchCurrentUser(username)),
    openModal: modal => dispatch(openModal(modal)),
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Comment));