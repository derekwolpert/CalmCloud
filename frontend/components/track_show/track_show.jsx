import React from 'react';
import { Link } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faPlayCircle, faPauseCircle, faHeart, faShareSquare, faCalendarAlt } from '@fortawesome/free-regular-svg-icons';
import { faCloudUploadAlt } from '@fortawesome/free-solid-svg-icons';


class TrackShow extends React.Component {

    constructor(props) {
        super(props);
        this.playPause = this.playPause.bind(this);
        this.formatListened = this.formatListened.bind(this);
    }

    componentDidMount() {
        this.props.fetchTrack(this.props.match.params.trackId);
    }


    componentDidUpdate(prevProps) {
        if (this.props.currentTrack !== prevProps.currentTrack) {
            if (this.props.track.id === this.props.currentTrack) {
                if (this.props.playing) {
                    this.props.changeTrack(this.props.track.id);
                }
                if (!this.props.playing) {
                    this.props.changeTrack(this.props.track.id);
                }
            }
        }
    }



    playPause() {
        if ((this.props.playing) && (this.props.track.id === this.props.currentTrack)) {
            return (<div className="track-show-pause-container">
                <FontAwesomeIcon onClick={() => this.props.pauseTrack()} icon={faPauseCircle} />
            </div>);
        }
        return (<div className="track-show-play-container" >
            <FontAwesomeIcon onClick={() => this.props.changeTrack(this.props.track.id)} icon={faPlayCircle} />
        </div >);
    }


    formatListened() {
        if (this.props.currentTrack !== null) {
            return (this.props.currentTrack === this.props.track.id ? this.props.percent : 0);
        }
        return 0;
    }

    handleProgress(e) {
        const bounds = e.currentTarget.getBoundingClientRect();
        const percent = ((e.clientX - (bounds.left)) / bounds.width);
        if (this.props.currentTrack === this.props.track.id) {
            this.props.currentPercent((percent * 100));
        }
    }

    formatTime(time) {
        const roundedTime = Math.floor(time);
        const hours = Math.floor(roundedTime / 3600);
        const minutes = Math.floor((roundedTime - (hours * 3600)) / 60);
        const seconds = roundedTime - (hours * 3600) - (minutes * 60);
        return ((time >= 3600 ? (hours + ":") : "") + (minutes < 10 ? "0" + minutes : minutes) + ":" + (seconds < 10 ? "0" + seconds : seconds));
    }


    render() {
        if (this.props.track) {
            return (
                <div>
                    <section className="track-show-header">

                        <div className="track-show-header-inner-container">

                            <div className="track-show-content-container">

                                <div className="track-show-title-container">

                                    {this.playPause()}

                                    <div className="track-show-inner-title">
                                        <h1>
                                            <Link to={`/track/${this.props.track.id}`}>{this.props.track.title}</Link>
                                        </h1>

                                        <div>
                                            by <span>{this.props.user.display_name}</span>
                                        </div>

                                    </div>

                                </div>
                                <div onClick={(e) => this.handleProgress(e)} className="track-show-waveform-container">

                                    <div className="track-show-listened-waveform" style={{ width: `${this.formatListened()}%`}} >
                                        <div className="track-show-listened-wrap">
                                            <img src={window.defaultWaveformShowLight} />
                                        </div>
                                    </div>
                                    <img src={window.defaultWaveformShowDark} />
                                    <span className="track-show-length">{this.formatTime(this.props.track.track_length)}</span>

                                </div>



                            </div>

                            <div className="track-show-sidebar">
                                <div className="track-show-artwork">
                                    <img src={this.props.track.trackArtworkUrl} />
                                </div>

                            </div>

                        </div>
                        <div className="track-show-blur-container">
                            <div className="track-show-blur-background"
                                style={{ backgroundImage: `url(${this.props.track.trackArtworkUrl})` }}
                            />   
                        </div>
                    </section>

                </div>
            )
        }
        return null
    }
}

export default TrackShow