import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { fetchUser } from "../../actions/user_actions";
import { changeTrack, pauseTrack } from '../../actions/footer_player_actions';
import { createFavoriteTrack, deleteFavoriteTrack } from "../../actions/favorite_track_actions";
import { createSubscribeUser, deleteSubscribeUser} from "../../actions/subscribe_user_actions";
import { openModal } from '../../actions/modal_actions';
import { openShareModal } from '../../actions/share_modal_actions';
import { currentPercent } from "../../actions/footer_player_actions";
import { fetchCurrentUser } from "../../actions/session_actions";
import UserShow from './user_show';

const mapStateToProps = (state, ownProps) => {
    const currentUser = state.entities.users[state.session.currentUser.username] || null;
    const user = state.entities.users[ownProps.match.params.username] || null;

    return {
        tracks: user ? Object.values(state.entities.tracks).slice().reverse().filter(track => track.user_id === user.id) : [],
        favoriteTracks: user ? ((user.favorites !== undefined) ? user.favorites.slice().reverse().map(num => state.entities.tracks[num]) : []) : [],
        user: user,
        users: state.entities.users,
        currentTrack: state.ui.currentTrack,
        percent: state.ui.percent,
        playing: state.ui.playing,
        currentUser: currentUser,
    };
};

const mapDispatchToProps = dispatch => ({
    fetchUser: (userId) => dispatch(fetchUser(userId)),
    changeTrack: (trackId) => dispatch(changeTrack(trackId)),
    pauseTrack: () => dispatch(pauseTrack()),
    createFavoriteTrack: (trackId) => dispatch(createFavoriteTrack(trackId)),
    deleteFavoriteTrack: (trackId) => dispatch(deleteFavoriteTrack(trackId)),
    createSubscribeUser: (userId) => dispatch(createSubscribeUser(userId)),
    deleteSubscribeUser: (userId) => dispatch(deleteSubscribeUser(userId)),
    fetchCurrentUser: (username) => dispatch(fetchCurrentUser(username)),
    openModal: modal => dispatch(openModal(modal)),
    openShareModal: url => dispatch(openShareModal(url)),
    currentPercent: percent => dispatch(currentPercent(percent)),
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(UserShow));