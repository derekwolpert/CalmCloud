import { connect } from 'react-redux';
import { Link, Redirect, withRouter } from 'react-router-dom';
import { logout } from '../../actions/session_actions';
import { openModal } from '../../actions/modal_actions';
import { removeCurrentTrack } from '../../actions/footer_player_actions'
import Header from './header';

const mapStateToProps = ({ entities, session, ui }) => ({
  currentUser: entities.users[session.currentUser.username],
  currentTrack: !!ui.currentTrack
});

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  openModal: modal => dispatch(openModal(modal)),
  removeCurrentTrack: () => dispatch(removeCurrentTrack())
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Header));