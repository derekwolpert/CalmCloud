import { connect } from 'react-redux';
import { Link, Redirect, withRouter } from 'react-router-dom';
import { changeTrack, pauseTrack, removeCurrentTrack, currentPercent } from '../../actions/footer_player_actions'
import FooterAudioPlayer from './footer_audio_player';

const mapStateToProps = ({ ui, entities }) => {
    return ({
    currentTrack: entities.tracks[ui.currentTrack],
    displayName: ui.currentTrack ? entities.users[entities.tracks[ui.currentTrack].user_id].display_name : null,
    currentTrackId: ui.currentTrack,
    playing: ui.playing,
    percent: ui.percent 
    });
};


const mapDispatchToProps = dispatch => ({
    changeTrack: (trackId) => dispatch(changeTrack(trackId)),
    pauseTrack: () => dispatch(pauseTrack()),
    removeCurrentTrack: () => dispatch(removeCurrentTrack()),
    currentPercent: (percent) => dispatch(currentPercent(percent)),
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(FooterAudioPlayer));