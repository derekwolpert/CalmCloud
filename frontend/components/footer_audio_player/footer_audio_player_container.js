import { connect } from 'react-redux';
import { Link, Redirect, withRouter } from 'react-router-dom';
import { changeTrack, pauseTrack, removeCurrentTrack, currentPercent } from '../../actions/footer_player_actions';
import { updatePlaycount } from '../../actions/track_actions';
import { createFavoriteTrack, deleteFavoriteTrack } from "../../actions/favorite_track_actions";
import { fetchCurrentUser } from "../../actions/session_actions";
import { openModal } from '../../actions/modal_actions';
import { openShareModal } from '../../actions/share_modal_actions';
import FooterAudioPlayer from './footer_audio_player';

const mapStateToProps = ({ ui, entities, session }) => {

    const currentTrack = entities.tracks[ui.currentTrack];

    const findUser = (userId) => {
        for (let user in entities.users) {
            if (entities.users[user].id === userId) {
                return entities.users[user];
            }
        }
    };

    return ({
        currentTrack: currentTrack,
        user: ui.currentTrack ? findUser(currentTrack.user_id) : null,
        currentTrackId: ui.currentTrack,
        playing: ui.playing,
        percent: ui.percent,
        currentUser: entities.users[session.currentUser.username]
    });
};


const mapDispatchToProps = dispatch => ({
    changeTrack: (trackId) => dispatch(changeTrack(trackId)),
    pauseTrack: () => dispatch(pauseTrack()),
    removeCurrentTrack: () => dispatch(removeCurrentTrack()),
    currentPercent: (percent) => dispatch(currentPercent(percent)),
    updatePlayCount: (username, track) => dispatch(updatePlaycount(username, { title: track.title, play_count: track.play_count + 1 })),
    createFavoriteTrack: (trackId) => dispatch(createFavoriteTrack(trackId)),
    deleteFavoriteTrack: (trackId) => dispatch(deleteFavoriteTrack(trackId)),
    fetchCurrentUser: (username) => dispatch(fetchCurrentUser(username)),
    openModal: modal => dispatch(openModal(modal)),
    openShareModal: url => dispatch(openShareModal(url)),
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(FooterAudioPlayer));