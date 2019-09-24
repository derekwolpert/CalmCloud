import React from 'react';
import { Link } from 'react-router-dom';
import TrackShowSidebar from "./track_show_sidebar";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faPlayCircle, faPauseCircle, faHeart, faShareSquare, faCalendarAlt, faEdit, faTrashAlt } from '@fortawesome/free-regular-svg-icons';
import { faCloudUploadAlt, faHeadphonesAlt, faThumbsDown } from '@fortawesome/free-solid-svg-icons';


class TrackShow extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            deleteConfirmation: false,
        };

        this.playPause = this.playPause.bind(this);
        this.formatListened = this.formatListened.bind(this);
        this.handleDelete = this.handleDelete.bind(this);
    }

    componentDidMount() {
        this.props.fetchAllTracks().then(() => this.props.fetchTrack(this.props.match.params.trackId));
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

        if (this.props.track.description === undefined) {
            this.props.fetchTrack(this.props.match.params.trackId);
        }

    }

    playPause() {
        if ((this.props.playing) && (this.props.track.id === this.props.currentTrack)) {
            return (<div className="track-show-pause-container">
                <FontAwesomeIcon onClick={() => this.props.pauseTrack()} icon={faPauseCircle} />
            </div >);
        }
        return (<div className="track-show-play-container">
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

    handleDelete() {
        if (this.props.track.id === this.props.currentTrack) {
            this.props.removeCurrentTrack();
        }
        this.props.deleteTrack(this.props.track.id);
        this.props.history.push("/");
    }

    formatTime(time) {
        const roundedTime = Math.floor(time);
        const hours = Math.floor(roundedTime / 3600);
        const minutes = Math.floor((roundedTime - (hours * 3600)) / 60);
        const seconds = roundedTime - (hours * 3600) - (minutes * 60);
        return ((time >= 3600 ? (hours + ":") : "") + (minutes < 10 ? "0" + minutes : minutes) + ":" + (seconds < 10 ? "0" + seconds : seconds));
    }

    formatDate(date) {
        const uploadDate = new Date(date);
        const nowDate = new Date();
        const secondsSince = ((nowDate - uploadDate) / 1000);

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

    isUrl(word) {
        
        const urlChecker = /((([A-Za-z]{3,9}:(?:\/\/)?)(?:[\-;:&=\+\$,\w]+@)?[A-Za-z0-9\.\-]+|(?:www\.|[\-;:&=\+\$,\w]+@)[A-Za-z0-9\.\-]+)((?:\/[\+~%\/\.\w\-_]*)?\??(?:[\-\+=&;%@\.\w_]*)#?(?:[\.\!\/\\\w]*))?)/;
        return word.match(urlChecker);
        
        // if (word.match(urlChecker)) {
        //     try {
        //         new URL(word);
        //         return true;
        //     } catch {
        //         return false;
        //     }

        // } else {
        //     return false;
        // }
    }

    formatHref(word) {
        if ((word.includes("https://") || word.includes("http://"))) return word;
        return `https://${word}`;
    }

    formatUrlsInDescription(para) {
        return (
            <>
                { para.split(" ").map((word, key) => (
                    this.isUrl(word) ? 
                        <a href={this.formatHref(word)} key={key} target="_blank">{key !== 0 ? ` ${word}` : word} </a> 
                            : 
                        key !== 0 ?` ${word}` : word)
                    )
                }
            </>
        )
    }

    render() {

        if (this.props.track) {
            return (
                <>
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
                                            <img src={window.defaultWaveformShowLight} style={{ cursor: `${(this.props.track.id === this.props.currentTrack) ? "pointer" : ""}`}}/>
                                        </div>
                                    </div>
                                    <img src={window.defaultWaveformShowDark} style={{ cursor: `${(this.props.track.id === this.props.currentTrack) ? "pointer" : ""}` }}/>
                                    <span className="track-show-length">{this.formatTime(this.props.track.track_length)}</span>

                                </div>



                            </div>

                            <div className="track-show-sidebar">
                                <div className="track-show-artwork">
                                    <img src={this.props.track.trackArtworkUrl ? this.props.track.trackArtworkUrl : window.defaultArtwork} />
                                </div>

                            </div>

                        </div>

                        <div className="track-show-actions-container">

                            <div className="track-show-actions-inner-container">
                                <footer className="track-show-actions">

                                    <div className="track-show-indiviual-actions">
                                        <button className="track-show-action-button" >
                                            <FontAwesomeIcon icon={faHeart} />
                                            Favorite
                                        </button>

                                        <button className="track-show-action-button" >
                                            <FontAwesomeIcon icon={faShareSquare} />
                                            Share
                                        </button>

                                        { this.props.track.user_id === this.props.currentUserId ? 
                                            <>
                                                <Link to={`/track/${this.props.track.id}/edit`}>
                                                    <div className="track-show-action-button-edit" >
                                                        <FontAwesomeIcon icon={faEdit} />
                                                        Edit
                                                    </div>
                                                </Link>
                                                <div className="track-show-delete-container">
                                                    <button className="track-show-action-button-delete" style={{ color: `${this.state.deleteConfirmation ? "#e2584e" : "" }`, border: `${this.state.deleteConfirmation ? "1px solid rgba(226,88,78,.8)" : "" }` }}
                                                        onClick={() => this.setState({deleteConfirmation: true}) }>
                                                        <FontAwesomeIcon icon={faTrashAlt} />
                                                        Delete
                                                    </button>
                                                    {this.state.deleteConfirmation ?
                                                        <div className="track-show-delete-confirmation">
                                                            <div className="track-show-confirm-delete" onClick={() => this.handleDelete()}>Confirm deletion</div>
                                                            <div className="track-show-cancel-delete" onClick={() => this.setState({ deleteConfirmation: false })}>Cancel</div>
                                                        </div> : null
                                                    }
                                                </div>
                                            </> : null

                                        }

                                    </div>

                                </footer>

                                <ul className="track-show-stats">

                                    <li>
                                        <FontAwesomeIcon icon={faHeadphonesAlt} />
                                        {this.props.track.play_count}
                                    </li>

                                    <li>
                                        <FontAwesomeIcon icon={faCalendarAlt} />
                                        {this.formatDate(this.props.track.created_at)}
                                    </li>

                                </ul>

                            </div>

                        </div>


                        <div className="track-show-blur-container">
                            <div className="track-show-blur-background"
                                style={{ backgroundImage: `url(${this.props.track.trackArtworkUrl ? this.props.track.trackArtworkUrl : window.defaultArtwork})` }}
                            />   
                        </div>

                    </section>

                    <section className="track-show-container">
                        
                        <section className="track-show-inner-container">
                            <div className="track-show-description">
                                {this.props.track.description ? this.props.track.description.split("\n").filter(Boolean).map((el, key) => (
                                    <p key={key}>{this.formatUrlsInDescription(el)}</p>)
                                    ) : null
                                }
                            </div>

                            <section className="track-show-comments">
                                <h1>
                                    Comments
                                </h1>
                            </section>
                            
                        </section>



                        <section className="track-show-sidebar">
                            
                            { this.props.tracks.length > 0 ?
                                <>
                                    <h1>
                                        More from {this.props.user.display_name}
                                    </h1>

                                    <ul>
                                        {this.props.tracks.map(subTrack => (

                                            <TrackShowSidebar
                                                key={subTrack.id}
                                                track={subTrack}
                                                date={this.formatDate(subTrack.created_at)}
                                            />

                                        ))}



                                    </ul> 
                                </> : null

                            }
                            
                        </section>
                
                    </section>

                </>
            )
        } else {
            return null;
        }
    }
}

export default TrackShow