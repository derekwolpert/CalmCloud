import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faPlay, faPause, faVolumeUp, faVolumeDown, faVolumeMute } from '@fortawesome/free-solid-svg-icons';
import { faHeart, faShareSquare, faUser } from '@fortawesome/free-regular-svg-icons';
import { Link } from 'react-router-dom';

class FooterAudioPlayer extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            time: "",
            left: "",
            percentage: 0,
        };
        this._audio = React.createRef();
        this.handleFavorites = this.handleFavorites.bind(this);
    }


    formatTime(time) {
        if (isNaN(time)) time = 0;
        const roundedTime = Math.floor(time);
        const hours = Math.floor(roundedTime / 3600);
        const minutes = Math.floor((roundedTime - (hours * 3600)) / 60);
        const seconds = roundedTime - (hours * 3600) - (minutes * 60);
        return ((this._audio.duration >= 3600 ? (hours + ":") : "") + (minutes < 10 ? "0" + minutes : minutes) + ":" + (seconds < 10 ? "0" + seconds : seconds));
    }

    playPauseAudio() {
        if (this.props.playing === false) {
            this._audio.play();
            this.props.changeTrack(this.props.currentTrackId);
        } else if (this.props.playing === true) {
            this._audio.pause();
            this.props.pauseTrack();
        }
    }

    componentDidMount() {
        setInterval(() => {
            this.setState({
                time: this._audio ? this.formatTime(this._audio.currentTime) : "",
                left: this._audio ? `-${this.formatTime(this._audio.duration - this._audio.currentTime)}` : "",
                percentage: this._audio ? ((this._audio.currentTime / this._audio.duration) * 100) : 0,
            });
        }, 200);
    }

    componentDidUpdate(prevProps) {
        if (this.props.currentTrackId !== prevProps.currentTrackId) {
            if (this.props.currentTrack !== undefined) {
                if (this.props.currentTrack.id === this.props.currentTrackId) {
                    if (this.props.playing !== prevProps.playing) {
                        if (this.props.playing) {
                            this.props.updatePlayCount(this.props.currentTrack);
                            this._audio.load();
                            this._audio.play();
                            this.setState({ percentage: 0 });
                        }
                        if (!this.props.playing) {
                            this._audio.pause();
                        }
                    } else {
                        this.props.updatePlayCount(this.props.currentTrack);
                        this._audio.load();
                        this._audio.play();
                        this.setState({ percentage: 0 });
                    }
                }
            }
            
        } else if (this.props.currentTrackId === prevProps.currentTrackId) {
            
            if (this.props.playing !== prevProps.playing) {
                if (this.props.playing) {
                    this._audio.play();
                }
                if (!this.props.playing) {
                    this._audio.pause();
                }
            }
        }

        if (this.props.playing) {
            this.props.currentPercent(this.state.percentage);
            if (this._audio.currentTime === this._audio.duration) {
                this.props.pauseTrack();
            }
        }

        if (this.props.currentTrackId !== null) {
            if (this._audio.paused && this.props.playing) {
                this.props.pauseTrack();
            } else if (!this._audio.paused && !this.props.playing) {
                this.props.changeTrack(this.props.currentTrackId);
            }
        }


        if (this.props.percent) {
            if (this.props.currentTrackId && this._audio.duration) {
                if ((Math.abs(this.props.percent - this.state.percentage) > 0.5) && (this.props.percent !== prevProps.percent)) {
                    this._audio.currentTime = ((this.props.percent * this._audio.duration) / 100);
                }
            }
        }
    }

    handleProgress(e) {
        const bounds = e.currentTarget.getBoundingClientRect();
        const percent = ((e.clientX - (bounds.left)) / bounds.width);
        this._audio.currentTime = (percent * this._audio.duration);
    }

    handleVolume(e) {
        const bounds = e.currentTarget.getBoundingClientRect();
        const percent = ((bounds.bottom -  e.clientY) / bounds.height);
        this._audio.volume = percent;
    }

    handleVolumeClick(e) {
        if (this._audio.volume > 0) {
            this._audio.volume = 0;
        } else {
            this._audio.volume = 1;
        }

    }

    volumeImage() {
        if (this._audio) {
            if (this._audio.volume > 0.5) return faVolumeUp;
            if (this._audio.volume > 0) return faVolumeDown;
            return faVolumeMute;
        }
        return faVolumeMute;
    }

    handleFavorites() {
        if (this.props.currentUser.favorites.includes(this.props.currentTrackId)) {
            this.props.deleteFavoriteTrack(this.props.currentTrackId).then(() => (
                this.props.fetchCurrentUser(this.props.currentUser.username)));
        } else {
            this.props.createFavoriteTrack(this.props.currentTrackId).then(() => (
                this.props.fetchCurrentUser(this.props.currentUser.username)));
        }
    }
    
    render() {
        if (this.props.currentTrack) {
            return (
                <div className="footer-player-container">
                    <div className="footer-player">
                        <div className="footer-player-artwork-container">
                            <img src={this.props.currentTrack.trackArtworkUrl ? this.props.currentTrack.trackArtworkUrl : window.defaultArtwork} />
                        </div>

                        <div onClick={() => this.playPauseAudio()} className={`footer-player-controls-${this.props.playing ? "pause" : "play"}`}>
                            <FontAwesomeIcon icon={this.props.playing ? faPause : faPlay} />
                        </div>

                        <div className="footer-player-details">

                            <h6 className="footer-player-title"><Link to={`/track/${this.props.currentTrackId}`}>{this.props.currentTrack.title}</Link></h6>
                            <h6 className="footer-player-user">uploaded by <span>{this.props.displayName}</span></h6>


                            <div className="footer-player-icons">
                                <div className={`footer-player-favorite-icon${this.props.currentUser ? (this.props.currentUser.favorites.includes(this.props.currentTrackId) ? "-active" : "") : "" }`}
                                    onClick={() => this.props.currentUser ? this.handleFavorites() : this.props.openModal("login")}>
                                    <FontAwesomeIcon icon={faHeart} />
                                </div>

                                <div className="footer-player-share-icon">
                                    <FontAwesomeIcon icon={faShareSquare} />
                                </div>

                                <div className="footer-player-user-icon">
                                    <FontAwesomeIcon icon={faUser} />
                                </div>
                            </div>

                        </div>

                        <div className="footer-player-mid-container">

                            <div className="footer-playbar">
                                <div className="footer-player-scrubber">
                                    <div className="footer-player-time">{this.state.time}</div>
                                    <div className="footer-player-time-left">{this.state.left}</div>

                                    <div className="footer-sub-scrubber" onClick={(e) => this.handleProgress(e)}>

                                        <div className="footer-scrubber-postion" style={{ width: `${this.state.percentage}%` }}>

                                            <div className="footer-scrubber-point">

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div className="footer-player-volume" >
                            <div className="footer-player-volume-image" onClick={(e) => this.handleVolumeClick(e)}>
                                <FontAwesomeIcon icon={this.volumeImage()} />
                            </div>

                            <div className="footer-player-volume-popup">
                                <div className="footer-player-volume-scrubber" onClick={(e) => this.handleVolume(e)}>
                                    <div className="footer-player-volume-percent" style={{ height: `${this._audio ? this._audio.volume * 100 : 0}%`}}>

                                    </div>
                                </div>
                            </div>

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