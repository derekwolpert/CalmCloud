import React from 'react';
import { connect } from 'react-redux';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faPlay, faPause, faVolumeUp, faVolumeDown, faVolumeMute, faThumbsDown } from '@fortawesome/free-solid-svg-icons';
import { faHeart, faCommentAlt } from '@fortawesome/free-regular-svg-icons';

class FooterAudioPlayer extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            time: "",
            left: "",
            percentage: 0,
        };
        this._audio = React.createRef();
    }

    componentDidMount() {
        setInterval(() => this.setState({ 
            time: this.formatTime(this._audio.currentTime),
            left: `-${this.formatTime(this._audio.duration - this._audio.currentTime)}`,
            percentage: ((this._audio.currentTime / this._audio.duration)*100),
            }), 100);
    }

    formatTime(time) {
        const roundedTime = Math.floor(time);
        const hours = Math.floor(roundedTime / 3600);
        const minutes = Math.floor((roundedTime - (hours * 3600)) / 60);
        const seconds = roundedTime - (hours * 3600) - (minutes * 60);
        return ((this._audio.duration >= 3600 ? (hours + ":") : "") + (minutes < 10 ? "0" + minutes : minutes) + ":" + (seconds < 10 ? "0" + seconds : seconds));
    }

    playPauseAudio() {
        if (this.props.playing === false) {
            this._audio.play();
            this.props.changeTrack(this.props.currentTrack.id);
        } else if (this.props.playing === true) {
            this._audio.pause();
            this.props.pauseTrack();
        }
    }

    componentDidUpdate(prevProps) {

        if (this.props.currentTrackId !== prevProps.currentTrackId) {
            if (this.props.currentTrack.id === this.props.currentTrackId) {
                if (this.props.playing !== prevProps.playing) {
                    if (this.props.playing) {
                        this._audio.load();
                        this._audio.play();
                    }
                    if (!this.props.playing) {
                        this._audio.pause();
                    }
                } else {
                    this._audio.load();
                    this._audio.play();
                }
            }
            
        } else if (this.props.currentTrackId === this.props.currentTrackId) {
            
            if (this.props.playing !== prevProps.playing) {
                if (this.props.playing) {
                    this._audio.play();
                }
                if (!this.props.playing) {
                    this._audio.pause();
                }
            }
        }
    }
    
    render() {
        if (this.props.currentTrack) {
            return (
                <div className="footer-player-container">
                    <div className="footer-player">
                        <div className="footer-player-artwork-container">
                            <img src={this.props.currentTrack.trackArtworkUrl} />
                        </div>

                        <div onClick={() => this.playPauseAudio()} className="footer-player-controls">
                            <FontAwesomeIcon icon={this.props.playing ? faPause : faPlay} />
                        </div>

                        <div className="footer-player-details">

                            <h6 className="footer-player-title">{this.props.currentTrack.title}</h6>
                            <h6 className="footer-player-user">by <span>{this.props.displayName}</span></h6>


                            <div className="footer-player-icons">
                                <div className="footer-player-favorite">
                                    <FontAwesomeIcon icon={faHeart} />
                                </div>

                                <div className="footer-player-comment">
                                    <FontAwesomeIcon icon={faCommentAlt} />
                                </div>
                            </div>

                        </div>

                        <div className="footer-player-mid-container">

                            <div className="footer-playbar">
                                <div className="footer-player-scrubber">
                                    <div className="footer-player-time">{this.state.time}</div>
                                    <div className="footer-player-time-left">{this.state.left}</div>

                                    <div className="footer-sub-scrubber">

                                        <div className="footer-scrubber-postion" style={{ width: `${this.state.percentage}%` }}>

                                            <div className="footer-scrubber-point">

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div className="footer-player-volume">
                            <FontAwesomeIcon icon={faVolumeUp} />
                        </div>
                    </div>
                    <audio
                        ref={(a) => this._audio = a}
                        src={this.props.currentTrack.trackAudioUrl}
                    />
                </div>
            )
        }
        return null;
        
    }

}

export default FooterAudioPlayer;