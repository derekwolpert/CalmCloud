import { connect } from 'react-redux';
import { Link, Redirect, withRouter } from 'react-router-dom';
import { logout } from '../../actions/session_actions';
import { openModal } from '../../actions/modal_actions';
import Header from './header';

const mapStateToProps = ({ entities, session }) => ({
  currentUser: entities.users[session.currentUser.id],
});

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  openModal: modal => dispatch(openModal(modal))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Header));
