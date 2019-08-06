import React from 'react';
import { connect } from 'react-redux';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faPlay, faPause, faVolumeUp, faVolumeDown, faVolumeMute } from '@fortawesome/free-solid-svg-icons';
import { faHeart, faCommentAlt } from '@fortawesome/free-regular-svg-icons';

class FooterAudioPlayer extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            playing: false,
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
            }), 10);
    }

    formatTime(time) {
        const roundedTime = Math.floor(time);

        const hours = Math.floor(roundedTime / 3600);
        const minutes = Math.floor((roundedTime - (hours * 3600)) / 60);
        const seconds = roundedTime - (hours * 3600) - (minutes * 60);

        return (hours + ":" + (minutes < 10 ? "0" + minutes : minutes) + ":" + (seconds < 10 ? "0" + seconds : seconds));
    }

    playPauseAudio() {
        if (this.state.playing === false) {
            this._audio.play();
            this.setState({ playing: true });
        } else if (this.state.playing === true) {
            this._audio.pause();
            this.setState({ playing: false });
        }
    }

    render() {
        return (
            <div className="footer-player-container">
                <div className="footer-player">
                    <div className="footer-player-artwork-container">

                    </div>

                    <div onClick={() => this.playPauseAudio()} className="footer-player-controls">
                        <FontAwesomeIcon icon={this.state.playing ? faPause : faPlay} />
                    </div>

                    <div className="footer-player-details">
                        
                        <h6 className="footer-player-title">Placeholder Track Title Placeholder Track Title</h6>
                        <h6 className="footer-player-user">by Placeholder User Display Name Placeholder User Display Name</h6>


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
                    src="https://luckyme-public.s3.amazonaws.com/advent/tracks/Advent18%20-%2005.mp3"
                />
            </div>
        )
    }

}



export default FooterAudioPlayer;