import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import Comment from './comment';

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
});

export default withRouter(connect(mapStateToProps, null)(Comment));