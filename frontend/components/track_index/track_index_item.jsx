import React from 'react';
import { Link } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faPlayCircle, faPauseCircle, faHeart, faShareSquare } from '@fortawesome/free-regular-svg-icons';
import { faCloudUploadAlt } from '@fortawesome/free-solid-svg-icons';

class TrackIndexItem extends React.Component {

    constructor(props) {
        super(props);
        this.playPause = this.playPause.bind(this);
        this.formateDate = this.formatDate(this);
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

    componentDidUpdate(prevProps) {
        if (this.props.currentTrack !== prevProps.currentTrack) {
            if (this.props.track.id === this.props.currentTrack) {
                if (this.props.playing) {
                    this.props.changeTrack(this.props.track.id)
                } 
                if (!this.props.playing) {
                    this.props.changeTrack(this.props.track.id)
                }
            }
        }   
    }

    playPause() {
        if ((this.props.playing) && (this.props.track.id === this.props.currentTrack)) {
            return (<div className="track-index-item-player-button-pause" >
                <FontAwesomeIcon onClick={() => this.props.pauseTrack()} icon={faPauseCircle} />
            </div>);
        }
        return (<div className="track-index-item-player-button-play" >
                <FontAwesomeIcon onClick={() => this.props.changeTrack(this.props.track.id)} icon={faPlayCircle} />
            </div >);
    }


    render() {
        return (
            <section className="track-index-item">
                <header className="track-index-item-user">
                    <div className="track-index-item-avatar">
                        <img src={this.props.user.userPictureUrl} />
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



                </header>
                <div className="track-index-item-artwork">
                    <img src={this.props.track.trackArtworkUrl} />
                </div>
                <section className="track-index-item-info">
                    {this.playPause()}
                    <h1 className="track-index-item-title">
                        {this.props.track.title}
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




            </section>
        )

    }


}


export default TrackIndexItem;



