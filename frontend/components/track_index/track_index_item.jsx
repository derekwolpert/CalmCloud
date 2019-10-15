import React from 'react';
import { Link } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faHeart, faShareSquare, faCalendarAlt } from '@fortawesome/free-regular-svg-icons';
import { faCloudUploadAlt, faHeadphonesAlt, faPlay, faPause, faTimes } from '@fortawesome/free-solid-svg-icons';

class TrackIndexItem extends React.Component {

    constructor(props) {
        super(props);
        this.playPause = this.playPause.bind(this);
        this.formateDate = this.formatDate.bind(this);
        this.confirmNew = this.confirmNew.bind(this);
        this.handleFavorites = this.handleFavorites.bind(this);
        this.handleProgress = this.handleProgress.bind(this);
    }

    formatTime(time) {
        const roundedTime = Math.floor(time);
        const hours = Math.floor(roundedTime / 3600);
        const minutes = Math.floor((roundedTime - (hours * 3600)) / 60);
        const seconds = roundedTime - (hours * 3600) - (minutes * 60);
        return ((time >= 3600 ? (hours + ":") : "") + (minutes < 10 ? "0" + minutes : minutes) + ":" + (seconds < 10 ? "0" + seconds : seconds));
    }

    formatDate()  {
        const uploadDate = new Date(this.props.track.created_at);
        const nowDate = new Date();
        const secondsSince = ((nowDate - uploadDate)/1000);

        if (secondsSince === 1) return `1 second ago`;
        if (secondsSince < 60) return `${Math.floor(secondsSince)} seconds ago`;

        if (secondsSince === 60) return `1 minute ago`;
        if (secondsSince < 3600) return `${Math.floor(secondsSince / 60)} minutes ago`;

        if (secondsSince === 3600) return `1 hour ago`;
        if (secondsSince < 86400) return `${Math.floor(secondsSince / 3600)} hours ago`;

        if (secondsSince === 86400) return `1 day ago`;
        if (secondsSince < 2592000) return `${Math.floor(secondsSince / 86400)} days ago`;

        if (secondsSince === 2592000) return `1 month ago`;
        if (secondsSince < 31104000) return `${Math.floor(secondsSince / 2592000)} months ago`;

        if (secondsSince === 31104000) return `1 year ago`;
        if (secondsSince > 31104000) return `${Math.floor(secondsSince / 31104000)} years ago`;
    }

    confirmNew() {
        const uploadDate = new Date(this.props.track.created_at);
        const nowDate = new Date();
        const secondsSince = ((nowDate - uploadDate) / 1000);

        if (secondsSince < 86400) {
            return true;
        }
        return false;
    }

    componentDidUpdate(prevProps) {

    }

    playPause() {
        const circumference = 27 * 2 * Math.PI;
        if ((this.props.playing) && (this.props.track.id === this.props.currentTrack)) {
            return (<div className="track-index-item-player-button-pause" onClick={() => this.props.pauseTrack()}>
                        <svg className="track-index-item-progress-svg">
                            <circle className="track-index-item-progress-background" />
                            <circle className="track-index-item-progress-circle"
                                style={{
                                    strokeDasharray: `${circumference} ${circumference}`,
                                    strokeDashoffset: `${(circumference) - (this.props.percent / 100) * (circumference)}`
                                }} />
                        </svg>
                    <FontAwesomeIcon icon={faPause} className="track-index-item-pause-icon"/>
                    </div>);
        }
        return (<div className="track-index-item-player-button-play" onClick={() => this.props.changeTrack(this.props.track.id)}>
                    <svg className="track-index-item-progress-svg">
                        <circle className="track-index-item-progress-background" />
                        { this.props.track.id === this.props.currentTrack ? 
                            <circle className="track-index-item-progress-circle"
                                style={{
                                    strokeDasharray: `${circumference} ${circumference}`,
                                    strokeDashoffset: `${(circumference) - (this.props.percent / 100) * (circumference)}`
                                }} /> : null
                        }
                    </svg>
                    <FontAwesomeIcon icon={faPlay} className="track-index-item-play-icon"/>
                </div >);
    }

    numberSuffix(number) {
        const numStr = number.toString();

        if (number > 3 && number < 21) {
            return "th";
        } else if (numStr[numStr.length - 1] === "1") {
            return "st";
        } else if (numStr[numStr.length - 1] === "2") {
            return "nd";
        } else if (numStr[numStr.length - 1] === "3") {
            return "rd";
        }  else {
            return "th";
        }
    }

    handleFavorites() {
        if (this.props.currentUser.favorites.includes(this.props.track.id)) {
            this.props.deleteFavoriteTrack(this.props.track.id).then(() => (
                this.props.fetchCurrentUser(this.props.currentUser.username)));
        } else {
            this.props.createFavoriteTrack(this.props.track.id).then(() => (
                this.props.fetchCurrentUser(this.props.currentUser.username)));
        }
    }

    handleProgress(e) {
        const bounds = e.currentTarget.getBoundingClientRect();
        const percent = ((e.clientX - (bounds.left)) / bounds.width);
        if (this.props.currentTrack === this.props.track.id) {
            this.props.currentPercent((percent * 100));
        }
    }

    render() {

        return (
            <section className="track-index-item">
                {this.props.path === "/" ?
                <header className="track-index-item-user">
                    <div className="track-index-item-avatar">
                        <img src={this.props.user.userPictureUrl ? this.props.user.userPictureUrl : window.defaultAvatar} />
                    </div>
                    <div className="track-index-item-display-name">
                        <Link to={`/${this.props.user.username}`}>{this.props.user.display_name}</Link> <span>uploaded</span>
                    </div>
                    
                    <div className="track-index-item-cloud-icon">
                        <FontAwesomeIcon icon={faCloudUploadAlt} />
                    </div>

                    <div className="track-index-item-time">
                        {this.formatDate()}
                    </div>

                </header> : null
                }
                <div className="track-index-item-artwork">
                    <img src={this.props.track.trackArtworkUrl ? this.props.track.trackArtworkUrl : window.defaultArtwork} />
                </div>
                {this.props.path === "/trending" ?
                    <div className="track-trending-postion-container">
                        <div className={`track-trending-position-background${this.props.position === 1 ? "-first" : ""}`} />
                        <div className={`track-trending-position${this.props.position === 1 ? "-first" : ""}`}>
                            {this.props.position}<span>{this.numberSuffix(this.props.position)}</span>
                        </div>
                    </div> : null
                }
                <section className="track-index-item-info">
                    <div className="track-index-item-play-pause">
                        {this.playPause()}
                    </div>
                    <h1 className="track-index-item-title">
                        <Link to={`/${this.props.user.username}/${this.props.track.title}`}>{this.props.track.title}</Link>
                    </h1>

                    <h2 className="track-index-item-sub-user">
                        uploaded by <Link to={`/${this.props.user.username}`}>{this.props.user.display_name}</Link>
                    </h2>
                </section>

                <div className="track-index-item-waveform">
                    <div className="track-index-item-length">
                        {this.formatTime(this.props.track.track_length)}
                    </div>

                    { (this.props.track.id === this.props.currentTrack) ?
                        <div className="track-index-waveform-progress" style={{ width: `${(this.props.percent / 100) * 560}px`}}>
                            <img src={window.defaultWaveformIndex} />
                            <div />
                        </div> : null
                    }
                    <img src={window.defaultWaveformIndex} onClick={(e) => this.handleProgress(e)} style={{ cursor: (this.props.track.id === this.props.currentTrack) ? "pointer" : "" }}/>
                </div>
            
                <section className="track-index-item-actions-container">
                    <div>
                        <div className="track-index-item-actions">

                            { this.props.currentUser ? 
                                <div className={`track-index-item-action${this.props.currentUser.favorites.includes(this.props.track.id) ? "-active" : ""}`}
                                    onClick={() => this.handleFavorites()} >
                                    <FontAwesomeIcon icon={faHeart} />
                                </div>
                                :
                                <div className="track-index-item-action"
                                    onClick={() => this.props.openModal("login")} >
                                    <FontAwesomeIcon icon={faHeart} />
                                </div>
                            }

                            <div className="track-index-item-action"
                                onClick={() => this.props.openShareModal((`${window.origin}/#/${this.props.user.username}/${this.props.track.title}`).split(" ").join("%20"))}>
                                <FontAwesomeIcon icon={faShareSquare} />
                            </div>
                        </div>

                        <div className="track-index-item-stats">
                            <div className="track-index-item-new-icon">
                                <FontAwesomeIcon icon={faHeadphonesAlt} />
                            </div>
                            <div className="track-index-item-new-stats">
                                {this.props.track.play_count}
                            </div>

                            <div className="track-index-item-new-icon">
                                <FontAwesomeIcon icon={faCalendarAlt} />
                            </div>
                            <div className="track-index-item-new-stats">
                                {`${this.formateDate().split(" ")[0]}${this.formateDate().split(" ")[1][0]} ${this.formateDate().split(" ")[2]}`}
                                { this.confirmNew() ? <div className="track-index-item-new-badge">New</div> : null }
                            </div>
                        </div>
                    </div>
                </section>
                { this.props.path === "/favorites" ?  
                    <span className="track-index-item-remove-favorite" onClick={() => this.handleFavorites()}>
                        <FontAwesomeIcon icon={faTimes} />
                    </span> : null
                }
            </section>
        )
    }
}


export default TrackIndexItem;



