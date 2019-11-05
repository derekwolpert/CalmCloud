import { connect } from 'react-redux';
import { fetchAllTracks } from '../../../actions/track_actions';
import { changeTrack, pauseTrack } from '../../../actions/footer_player_actions';
import { createFavoriteTrack, deleteFavoriteTrack } from "../../../actions/favorite_track_actions";
import { openModal } from '../../../actions/modal_actions';
import { openShareModal } from '../../../actions/share_modal_actions';
import { fetchCurrentUser } from "../../../actions/session_actions";
import { currentPercent } from "../../../actions/footer_player_actions";
import { withRouter } from 'react-router-dom';
import TrackIndex from '../track_index';

const mapStateToProps = (state) => {
    return {
        tracks: state.entities.tracks,
        users: state.entities.users,
        currentTrack: state.ui.currentTrack,
        percent: state.ui.percent,
        playing: state.ui.playing,
        currentUser: state.entities.users[state.session.currentUser.username]
    };
};

const mapDispatchToProps = dispatch => ({
    fetchAllTracks: () => dispatch(fetchAllTracks()),
    changeTrack: (trackId) => dispatch(changeTrack(trackId)),
    pauseTrack: () => dispatch(pauseTrack()),
    createFavoriteTrack: (trackId) => dispatch(createFavoriteTrack(trackId)),
    deleteFavoriteTrack: (trackId) => dispatch(deleteFavoriteTrack(trackId)),
    fetchCurrentUser: (username) => dispatch(fetchCurrentUser(username)),
    openModal: modal => dispatch(openModal(modal)),
    openShareModal: url => dispatch(openShareModal(url)),
    currentPercent: percent => dispatch(currentPercent(percent)),
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(TrackIndex));