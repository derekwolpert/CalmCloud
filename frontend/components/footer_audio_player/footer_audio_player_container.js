import { connect } from 'react-redux';
import { Link, Redirect, withRouter } from 'react-router-dom';
import { changeTrack, pauseTrack } from '../../actions/footer_player_actions'
import FooterAudioPlayer from './footer_audio_player';

const mapStateToProps = ({ ui, entities }) => ({
    currentTrack: entities.tracks[ui.currentTrack],
    displayName: ui.currentTrack ? entities.users[entities.tracks[ui.currentTrack].user_id].display_name : null,
    currentTrackId: ui.currentTrack,
    playing: ui.playing
});


const mapDispatchToProps = dispatch => ({
    changeTrack: (trackId) => dispatch(changeTrack(trackId)),
    pauseTrack: () => dispatch(pauseTrack()),
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(FooterAudioPlayer));