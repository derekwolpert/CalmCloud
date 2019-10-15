import { connect } from 'react-redux';
import { updateUser } from '../../actions/user_actions';
import { fetchCurrentUser } from '../../actions/session_actions';
import { Link, Redirect, withRouter } from 'react-router-dom';
import UserEdit from './user_edit';

const mapStateToProps = state => {
    const currentUsername = state.session.currentUser.username;
    const currentUser = currentUsername ? state.entities.users[state.session.currentUser.username] : null;
    return {
        currentUsername: currentUsername,
        currentUser: currentUser,
    };
};

const mapDispatchToProps = dispatch => ({
    updateUser: (user) => dispatch(updateUser(user)),
    fetchCurrentUser: (username) => dispatch(fetchCurrentUser(username))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(UserEdit));