import { connect } from 'react-redux';
import { openModal } from '../../actions/modal_actions';
import Splash from './splash';
import { fetchAllTracks } from '../../actions/track_actions';
import { openShareModal } from '../../actions/share_modal_actions';
import { changeTrack, pauseTrack } from '../../actions/footer_player_actions';
import { currentPercent } from "../../actions/footer_player_actions";

const mapStateToProps = (state) => {
    return {
        tracks: state.entities.tracks,
        users: state.entities.users,
        currentTrack: state.ui.currentTrack,
        percent: state.ui.percent,
        playing: state.ui.playing,
    };
};

const mapDispatchToProps = dispatch => ({
    fetchAllTracks: () => dispatch(fetchAllTracks()),
    changeTrack: (trackId) => dispatch(changeTrack(trackId)),
    pauseTrack: () => dispatch(pauseTrack()),
    currentPercent: percent => dispatch(currentPercent(percent)),
    openShareModal: url => dispatch(openShareModal(url)),
    openModal: modal => dispatch(openModal(modal))
});

export default connect(mapStateToProps, mapDispatchToProps)(Splash);