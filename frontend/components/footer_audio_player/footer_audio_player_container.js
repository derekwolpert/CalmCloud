import { connect } from 'react-redux';
import { Link, Redirect, withRouter } from 'react-router-dom';
import { changeTrack, pauseTrack, removeCurrentTrack, currentPercent } from '../../actions/footer_player_actions';
import { updatePlaycount } from '../../actions/track_actions';
import { createFavoriteTrack, deleteFavoriteTrack } from "../../actions/favorite_track_actions";
import { fetchCurrentUser } from "../../actions/session_actions";
import FooterAudioPlayer from './footer_audio_player';

const mapStateToProps = ({ ui, entities, session }) => {
    return ({
    currentTrack: entities.tracks[ui.currentTrack],
    displayName: ui.currentTrack ? entities.users[entities.tracks[ui.currentTrack].user_id].display_name : null,
    currentTrackId: ui.currentTrack,
    playing: ui.playing,
    percent: ui.percent,
    currentUser: entities.users[session.currentUser.id]
    });
};


const mapDispatchToProps = dispatch => ({
    changeTrack: (trackId) => dispatch(changeTrack(trackId)),
    pauseTrack: () => dispatch(pauseTrack()),
    removeCurrentTrack: () => dispatch(removeCurrentTrack()),
    currentPercent: (percent) => dispatch(currentPercent(percent)),
    updatePlayCount: (track) => dispatch(updatePlaycount({ id: track.id, play_count: track.play_count + 1 })),
    createFavoriteTrack: (trackId) => dispatch(createFavoriteTrack(trackId)),
    deleteFavoriteTrack: (trackId) => dispatch(deleteFavoriteTrack(trackId)),
    fetchCurrentUser: (userId) => dispatch(fetchCurrentUser(userId)),
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(FooterAudioPlayer));