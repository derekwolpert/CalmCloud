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
    const user = track ? state.entities.users[track.user_id] : null;
    const tracks = track ? Object.values(state.entities.tracks).slice().reverse().filter(subTrack => {
        return (subTrack.user_id === track.user_id) && (subTrack.id !== track.id);
    }).slice(0, 3) : null;

    return {
        track: track,
        tracks: tracks,
        user: user,
        currentUser: state.entities.users[state.session.currentUser.id],
        currentUserId: state.session.currentUser.id,
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
    fetchCurrentUser: (userId) => dispatch(fetchCurrentUser(userId)),
    openModal: modal => dispatch(openModal(modal))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(TrackShow));