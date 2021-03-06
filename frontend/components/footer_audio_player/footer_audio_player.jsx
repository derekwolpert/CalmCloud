import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faPlay, faPause, faVolumeUp, faVolumeDown, faVolumeMute, faHistory, faLongArrowAltLeft, faLongArrowAltRight } from '@fortawesome/free-solid-svg-icons';
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
        this.handleFavicon = this.handleFavicon.bind(this);
        this._loading = React.createRef();
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
        this.handleFavicon();
        if (this.props.currentTrackId !== prevProps.currentTrackId) {
            if (this.props.currentTrack !== undefined) {
                if (this.props.currentTrack.id === this.props.currentTrackId) {
                    if (this.props.playing !== prevProps.playing) {
                        if (this.props.playing) {
                            this.props.updatePlayCount(this.props.user.username, this.props.currentTrack);
                            this._audio.load();
                            this._audio.play();
                            this.setState({ percentage: 0 });
                        }
                        if (!this.props.playing) {
                            this._audio.pause();
                        }
                    } else {
                        this.props.updatePlayCount(this.props.user.username, this.props.currentTrack);
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

    handleFavicon() {
        const favicon = document.getElementById("favicon");
        if (this.props.currentTrackId === null) {
            favicon.href = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAktJREFUWAljYBgFIz0EGIkJgL6+Ps5Pnz4ZMzIymv///98EqOc9EJ9hYmI6raGhcS0sLOwvMeZgU0PQAQ0NDWFAjf1ALIXNAKDYZWZm5uDa2trbOOTxCuN1ANDyCUDd+XhNgEiCQsQHqP4YEWpRlOB0ANCwNKDKmSiq8XM+AqVNhISEHr97904XGF3ywOi6XF9ffxvI/o9LK1YHtLa2Sv7+/fsmUBMvLo04xK8CxSWBWAhJ/gSQHQ/00C0kMTiTCc5CYgAtLwJySbUcZII2ECNbDhKzAOJjQAfIgDjoAKsDgIoi0BVSyBcG6u/AZgZGFABdKgZU+BKbYgrFfgL1CwDN/4FsDrYQ4ENWQEU2O9AsCXTzUBzQ1NSkC1QwFV0Rlfg/JSUln6KbxQwTAAZNHjDbrAPyVWFiVKY/ff369YyDg8ODAwcOwLMlOASAlscBLZsIxCxUthTZOCGgB3cBBU4DQ9oaJsHY2dnJ+/3797tAAVGYIB3of8DCyQNYSO1mAloeT2fLQf5jAobGHGDIc4GiwBckMgBADhgKiSAHqA+A5WArgaEQBHIAx0A5AGivKsgBtCj1iPUTM8gBB4lVTQN195iArZnpQIP/0cBwYoxcz7x///43wNIJVFuZE6ODimpAxTI4FzDw8fFVADnHqWg4IaP+ABUkAMuBL6A0wFBUVPQdSLkAcS8Qk93CBeolBjwEtqZdgJbvASnGaA+0tLTI//371waYR82A8qAyAuxIkGIKwC+g3ktAfIqbm3t3aWnpVwrMGtU6zEIAAJ4QmAHwL8Z/AAAAAElFTkSuQmCC";
        } else if (this.props.currentTrackId) {
            const canvas = document.createElement('canvas');
            canvas.width = 32;
            canvas.height = 32;
            const ctx = canvas.getContext('2d');
            const img = document.createElement('img');
            img.src = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAQAAADZc7J/AAAAH0lEQVR42mNkoBAwjhowasCoAaMGjBowasCoAcPNAACOMAAhOO/A7wAAAABJRU5ErkJggg==";
            img.onload = () => {
                ctx.drawImage(img, 0, 0, 32, 32);
                ctx.clearRect(0, 0, 32, 32);
                ctx.beginPath();
                ctx.arc(16, 16, 14, 0, 2 * Math.PI);
                ctx.fillStyle = "transparent";
                ctx.fill();
                ctx.lineWidth = 4;
                ctx.strokeStyle = "rgba(128, 128, 128, 0.4)";
                ctx.stroke();    
                ctx.beginPath();
                ctx.arc(16, 16, 14, (-(2 * Math.PI)/4), ((2 * Math.PI)*(this.state.percentage/100)-(2 * Math.PI)/4));
                ctx.fillStyle = "transparent";
                ctx.fill();
                ctx.lineWidth = 4;
                ctx.strokeStyle = "#4fa6d3";
                ctx.stroke();
                ctx.fillStyle = "rgb(128, 128, 128)";
                if ((this.props.currentTrackId !== null) && (!this.props.playing)) {
                    ctx.fillRect(10, 9, 4, 14);
                    ctx.fillRect(18, 9, 4, 14);
                } else if (this.props.playing) {
                    ctx.beginPath();
                    ctx.moveTo(11, 9);
                    ctx.lineTo(23, 16);
                    ctx.lineTo(11, 23);
                    ctx.fill();
                }
                favicon.href = canvas.toDataURL('image/png');
            };
        }
    }

    handleProgress(e) {
        const bounds = e.currentTarget.getBoundingClientRect();
        const percent = ((e.clientX - (bounds.left)) / bounds.width);
        this._audio.currentTime = (percent * this._audio.duration);
        this.props.currentPercent(percent * 100);
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
        this._loading.style.display = "";
        if (this.props.currentUser.favorites.includes(this.props.currentTrackId)) {
            this.props.deleteFavoriteTrack(this.props.currentTrackId).then((trackId) => {
                if (trackId === this.props.currentTrackId) {
                    this.props.fetchCurrentUser(this.props.currentUser.username).then(() => this._loading.style.display = "none");
                }
            });
        } else {
            this.props.createFavoriteTrack(this.props.currentTrackId).then(trackId => {
                if (trackId === this.props.currentTrackId) {
                    this.props.fetchCurrentUser(this.props.currentUser.username).then(() => this._loading.style.display = "none");
                }
            });
        }
    }
    
    render() {
        if (this.props.currentTrack) {
            return (
                <div className="footer-player-container">
                    <div className="footer-player">
                        <div className={`footer-player-controls-${this.props.playing ? "pause" : "play"}`}>
                            <div onClick={() => this.playPauseAudio()} >
                                <FontAwesomeIcon icon={this.props.playing ? faPause : faPlay} />
                            </div>
                        </div>
                        <div className="footer-player-artwork-container">
                            <img src={this.props.currentTrack.trackArtworkUrl ? this.props.currentTrack.trackArtworkUrl : window.defaultArtwork} />
                        </div>
                        <div className="footer-player-details">
                            <h6 className="footer-player-title"><Link to={`/${this.props.user.username}/${this.props.currentTrack.title}`}>{this.props.currentTrack.title}</Link></h6>
                            <h6 className="footer-player-user">uploaded by <Link to={`/${this.props.user.username}`}>{this.props.user.display_name}</Link></h6>

                            <div className="footer-player-icons">
                                <div className={`footer-player-favorite-icon${this.props.currentUser ? (this.props.currentUser.favorites.includes(this.props.currentTrackId) ? "-active" : "") : "" }`}
                                    onClick={() => this.props.currentUser ? this.handleFavorites() : this.props.openModal("login")}>
                                    <FontAwesomeIcon icon={faHeart} />
                                </div>

                                <div className="footer-player-share-icon"
                                    onClick={() => this.props.openShareModal((`${window.origin}/#/${this.props.user.username}/${this.props.currentTrack.title}`).split(" ").join("%20"))}>
                                    <FontAwesomeIcon icon={faShareSquare} />
                                </div>

                                <Link to={`/${this.props.user.username}`} className="footer-player-user-icon">
                                    <FontAwesomeIcon icon={faUser} />
                                </Link>
                            </div>

                        </div>

                        <div className="footer-player-mid-container">
                            <div className="footer-player-playback-icons">
                                <div className="footer-player-playback-restart" onClick={() => {
                                    this._audio.currentTime = 0;
                                    this.props.currentPercent(0);
                                    if (this.props.playing === false) {
                                        this._audio.play();
                                    }
                                }}>
                                    <FontAwesomeIcon icon={faHistory} />
                                </div>
                                <div className="footer-player-playback-rewind" onClick={() => {
                                    if ((this._audio.currentTime - 10) < 0) {
                                        this._audio.currentTime = 0
                                    } else {
                                        this._audio.currentTime -= 10;
                                    }
                                    this.props.currentPercent((this._audio.currentTime/this._audio.duration) * 100);
                                }}>
                                    <FontAwesomeIcon icon={faLongArrowAltLeft} />
                                    <span>10s</span>
                                </div>
                                <div className="footer-player-playback-forward" onClick={() => {
                                    if ((this._audio.currentTime + 10) > this._audio.duration) {
                                        this._audio.currentTime = this._audio.duration
                                    } else {
                                        this._audio.currentTime += 10;
                                    }
                                    this.props.currentPercent((this._audio.currentTime / this._audio.duration) * 100);
                                }}>
                                    <FontAwesomeIcon icon={faLongArrowAltRight} />
                                    <span>10s</span>
                                </div>
                            </div>
                            
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
                    <div ref={(l) => this._loading = l} className="loading-spinner-background" style={{ display: "none" }}><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
                </div>
            )
        }
        return null;
    }

}

export default FooterAudioPlayer;