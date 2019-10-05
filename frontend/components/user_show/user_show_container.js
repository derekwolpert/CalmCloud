import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { fetchUser } from "../../actions/user_actions";
import { changeTrack, pauseTrack } from '../../actions/footer_player_actions';
import { createFavoriteTrack, deleteFavoriteTrack } from "../../actions/favorite_track_actions";
import { fetchCurrentUser } from "../../actions/session_actions";
import UserShow from './user_show';

const mapStateToProps = (state, ownProps) => {
    const currentUser = state.entities.users[state.session.currentUser.username];
    const user = state.entities.users[ownProps.match.params.username];
    const favoriteTracks = user ? (user.favorites !== undefined ? user.favorites.slice().reverse().map(num => state.entities.tracks[num]) : []) : null;

    return {
        tracks: Object.values(state.entities.tracks).slice().reverse().filter(track => track.user_id === user.id),
        favoriteTracks: favoriteTracks,
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
    fetchCurrentUser: (username) => dispatch(fetchCurrentUser(username)),
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(UserShow));