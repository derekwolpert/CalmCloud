import { connect } from 'react-redux';
import { fetchAllTracks } from '../../../actions/track_actions';
import { changeTrack, pauseTrack } from '../../../actions/footer_player_actions';
import { createFavoriteTrack, deleteFavoriteTrack } from "../../../actions/favorite_track_actions";
import { fetchCurrentUser } from "../../../actions/session_actions";
import { withRouter } from 'react-router-dom';
import TrackIndex from '../track_index';


const mapStateToProps = (state) => {

    const currentUser = state.entities.users[state.session.currentUser.id];

    const handleTotalPlaycounts = () => {
        let total = 0;
        Object.values(state.entities.tracks).forEach(track => {
            if (track.user_id === currentUser.id) total += track.play_count;
        });
        return total;
    };

    const handleTotalUploads = () => {
        let total = 0;
        Object.values(state.entities.tracks).forEach(track => {
            if (track.user_id === currentUser.id) total += 1;
        });
        return total;
    };

    return {
        tracks: Object.values(state.entities.tracks).slice().reverse(),
        users: state.entities.users,
        currentTrack: state.ui.currentTrack,
        percent: state.ui.percent,
        playing: state.ui.playing,
        currentUser: currentUser,
        totalPlaycounts: handleTotalPlaycounts(),
        totalUploads: handleTotalUploads()

    };
};

const mapDispatchToProps = dispatch => ({
    fetchAllTracks: () => dispatch(fetchAllTracks()),
    changeTrack: (trackId) => dispatch(changeTrack(trackId)),
    pauseTrack: () => dispatch(pauseTrack()),
    createFavoriteTrack: (trackId) => dispatch(createFavoriteTrack(trackId)),
    deleteFavoriteTrack: (trackId) => dispatch(deleteFavoriteTrack(trackId)),
    fetchCurrentUser: (userId) => dispatch(fetchCurrentUser(userId)),
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(TrackIndex));