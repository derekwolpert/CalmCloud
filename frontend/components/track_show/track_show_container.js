import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { fetchTrack, deleteTrack } from '../../actions/track_actions';
import { createFavoriteTrack, deleteFavoriteTrack } from "../../actions/favorite_track_actions";
import { fetchCurrentUser }  from "../../actions/session_actions";
import { openModal } from '../../actions/modal_actions';
import TrackShow from './track_show';
import { changeTrack, pauseTrack, currentPercent, removeCurrentTrack } from "../../actions/footer_player_actions";

const mapStateToProps = (state, ownProps) => {
    const track = state.entities.tracks[ownProps.match.params.trackId];
    const tracks = track ? Object.values(state.entities.tracks).slice().reverse().filter(subTrack => {
        return (subTrack.user_id === track.user_id) && (subTrack.id !== track.id);
    }).slice(0, 3) : null;

    const findUser = (userId) => {
        for (let user in state.entities.users) {
            if (state.entities.users[user].id === userId) {
                return state.entities.users[user];
            }
        }
    };

    return {
        track: track,
        tracks: tracks,
        user: track ? findUser(track.user_id) : null,
        currentUser: state.session.currentUser.username ? state.entities.users[state.session.currentUser.username] : null,
        currentUserId: state.session.currentUser.username ? state.entities.users[state.session.currentUser.username].id : null,
        currentTrack: state.ui.currentTrack,
        playing: state.ui.playing,
        percent: state.ui.percent
    };
};

const mapDispatchToProps = dispatch => ({
    fetchTrack: id => dispatch(fetchTrack(id)),
    changeTrack: (trackId) => dispatch(changeTrack(trackId)),
    pauseTrack: () => dispatch(pauseTrack()),
    currentPercent: (percent) => dispatch(currentPercent(percent)),
    deleteTrack: trackId => dispatch(deleteTrack(trackId)),
    removeCurrentTrack: () => dispatch(removeCurrentTrack()),
    createFavoriteTrack: (trackId) => dispatch(createFavoriteTrack(trackId)),
    deleteFavoriteTrack: (trackId) => dispatch(deleteFavoriteTrack(trackId)),
    fetchCurrentUser: (username) => dispatch(fetchCurrentUser(username)),
    openModal: modal => dispatch(openModal(modal))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(TrackShow));