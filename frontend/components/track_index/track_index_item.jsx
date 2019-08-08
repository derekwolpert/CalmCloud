import React from 'react';
import { Link } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faPlayCircle, faPauseCircle } from '@fortawesome/free-regular-svg-icons';

class TrackIndexItem extends React.Component {

    constructor(props) {
        super(props);
        this.playPause = this.playPause.bind(this);
    }

    formatTime(time) {
        const roundedTime = Math.floor(time);
        const hours = Math.floor(roundedTime / 3600);
        const minutes = Math.floor((roundedTime - (hours * 3600)) / 60);
        const seconds = roundedTime - (hours * 3600) - (minutes * 60);
        return ((time >= 3600 ? (hours + ":") : "") + (minutes < 10 ? "0" + minutes : minutes) + ":" + (seconds < 10 ? "0" + seconds : seconds));
    }

    componentDidUpdate(prevProps) {
        if (this.props.currentTrack !== prevProps.currentTrack) {
            if (this.props.track.id === this.props.currentTrack) {
                if (this.props.playing) {
                    this.props.changeTrack(this.props.track.id)
                } if (!this.props.playing) {
                    this.props.changeTrack(this.props.track.id)
                }
            }
        }   
    }

    playPause() {
        if ((this.props.playing) && (this.props.track.id === this.props.currentTrack)) {
            return (<FontAwesomeIcon onClick={() => this.props.pauseTrack()} icon={faPauseCircle} />)
        }

        return (<FontAwesomeIcon onClick={() => this.props.changeTrack(this.props.track.id)} icon={faPlayCircle} />)
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
                </header>
                <div className="track-index-item-artwork">
                    <img src={this.props.track.trackArtworkUrl} />
                </div>
                <section className="track-index-item-info">
                    <div className="track-index-item-player-button">
                        {this.playPause()}
                    </div>

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



