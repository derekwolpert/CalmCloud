import React from 'react';
import { Link } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faHeart, faShareSquare, faCalendarAlt } from '@fortawesome/free-regular-svg-icons';
import { faCloudUploadAlt, faHeadphonesAlt, faPlay, faPause } from '@fortawesome/free-solid-svg-icons';

class TrackIndexItem extends React.Component {

    constructor(props) {
        super(props);
        this.playPause = this.playPause.bind(this);
        this.formateDate = this.formatDate.bind(this);
        this.confirmNew = this.confirmNew.bind(this);
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


    render() {
        return (
            <section className="track-index-item">
                {this.props.trackIndexItemHeader ?
                <header className="track-index-item-user">
                    <div className="track-index-item-avatar">
                        <img src={this.props.user.userPictureUrl ? this.props.user.userPictureUrl : window.defaultAvatar} />
                    </div>
                    <div className="track-index-item-display-name">
                        <a>{this.props.user.display_name}</a> <span>uploaded</span>
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
                <section className="track-index-item-info">
                    <div className="track-index-item-play-pause">
                        {this.playPause()}
                    </div>
                    <h1 className="track-index-item-title">
                        <Link to={`/track/${this.props.track.id}`}>{this.props.track.title}</Link>
                    </h1>

                    <h2 className="track-index-item-sub-user">
                        by <span>{this.props.user.display_name}</span>
                    </h2>
                </section>

                <div className="track-index-item-waveform">
                    <div className="track-index-item-length">
                        {this.formatTime(this.props.track.track_length)}
                    </div>
                    <img src={window.defaultWaveformIndex} />
                </div>
            
                <section className="track-index-item-actions-container">
                    <div>
                        <div className="track-index-item-actions">

                            <div className="track-index-item-action">
                                <FontAwesomeIcon icon={faHeart} />
                            </div>

                            <div className="track-index-item-action">
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
                            { this.confirmNew() ? (
                                <>
                                    <div className="track-index-item-new-icon">
                                        <FontAwesomeIcon icon={faCalendarAlt} />
                                    </div>
                                    <div className="track-index-item-new-stats">
                                        {`${this.formateDate().split(" ")[0]}${this.formateDate().split(" ")[1][0]} ${this.formateDate().split(" ")[2]}`   }
                                        <div className="track-index-item-new-badge">New</div>
                                    </div>
                                </>
                                ) : (
                                null
                            )}
                        </div>
                    </div>
                </section>
            </section>
        )
    }
}


export default TrackIndexItem;



