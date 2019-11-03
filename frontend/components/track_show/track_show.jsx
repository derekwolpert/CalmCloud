import React from 'react';
import { Link } from 'react-router-dom';
import TrackShowSidebar from "./track_show_sidebar";
import TrackIndexInfo from "../track_index/track_index_info";
import CommentContainer from "./comment_container";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faHeart, faShareSquare, faCalendarAlt, faEdit, faTrashAlt } from '@fortawesome/free-regular-svg-icons';
import { faHeadphonesAlt, faPlay, faPause, faCloud } from '@fortawesome/free-solid-svg-icons';


class TrackShow extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            deleteConfirmation: false,
            loaded: false,
            showSmallPlayer: false,
            commentText: "",
        };
        this.handleSmallPlayer = this.handleSmallPlayer.bind(this);
        this.playPause = this.playPause.bind(this);
        this.playPauseSmall = this.playPauseSmall.bind(this);
        this.formatListened = this.formatListened.bind(this);
        this.handleDelete = this.handleDelete.bind(this);
        this.handleFavorites = this.handleFavorites.bind(this);
        this.handleSubmitComment = this.handleSubmitComment.bind(this);
        this._loading = React.createRef();
    }

    componentDidMount() {
        window.scrollTo(0, 0);
        this.props.fetchTrack(this.props.match.params.username, this.props.match.params.title).then(() => {
            this.setState({
                loaded: true
            });
        });
        window.addEventListener('scroll', this.handleSmallPlayer);

        document.title = `${this.props.match.params.title} | CalmCloud`;
    }

    componentWillUnmount() {
        window.removeEventListener('scroll', this.handleSmallPlayer);
        this.setState({
            deleteConfirmation: false,
            loaded: false,
            showSmallPlayer: false,
            commentText: "",
        });
    }

    componentDidUpdate(prevProps) {
        if (this.props.match.params.title !== prevProps.match.params.title) {
            this.setState({
                deleteConfirmation: false,
                loaded: false,
             });
            window.scrollTo(0, 0);
            this.props.fetchTrack(this.props.match.params.username, this.props.match.params.title).then(() => {
                this.setState({
                    loaded: true
                });
            });
            document.title = `${this.props.match.params.title} | CalmCloud`;
        } else if (this.props.track) {
            if (this.props.track.description === undefined) {
                window.scrollTo(0, 0);
                this.props.fetchTrack(this.props.match.params.username, this.props.match.params.title).then(() => {
                    this.setState({
                        loaded: true
                    });
                });
                document.title = `${this.props.match.params.title} | CalmCloud`;
            }
        }
        if (this.props.currentUser === undefined && prevProps.currentUser) {
            this.props.history.push("/");
        }
    }

    handleSmallPlayer() {
        if ((window.scrollY > 437) && !this.state.showSmallPlayer) {
            this.setState({
                showSmallPlayer: true,
            });
        } else if ((window.scrollY <= 437) && this.state.showSmallPlayer) {
            this.setState({
                showSmallPlayer: false,
            });
        }
    }

    playPause() {
        const circumference = 43 * 2 * Math.PI;
        if ((this.props.playing) && (this.props.track.id === this.props.currentTrack)) {
            return (<div className="track-show-pause-container" onClick={() => this.props.pauseTrack()}>
                <svg className="track-show-progress-svg">
                    <circle className="track-show-progress-background"/>
                    <circle className="track-show-progress-circle"
                        style={{ 
                            strokeDasharray: `${circumference} ${circumference}`,
                            strokeDashoffset: `${(circumference) - (this.props.percent / 100) * (circumference)}`
                        }} />
                </svg>
                <FontAwesomeIcon icon={faPause} className="track-show-pause-icon" />
            </div >);
        }
        return (<div className="track-show-play-container" onClick={() => this.props.changeTrack(this.props.track.id)}>
            <svg className="track-show-progress-svg">
                <circle className="track-show-progress-background"/>
                {this.props.track.id === this.props.currentTrack ?
                    <circle className="track-show-progress-circle"
                        style={{
                            strokeDasharray: `${circumference} ${circumference}`,
                            strokeDashoffset: `${(circumference) - (this.props.percent / 100) * (circumference)}`
                        }} /> : null
                }
            </svg>
            <FontAwesomeIcon icon={faPlay} className="track-show-play-icon"/>
        </div >);
    }

    playPauseSmall() {
        const circumference = 18 * 2 * Math.PI;
        if ((this.props.playing) && (this.props.track.id === this.props.currentTrack)) {
            return (<div className="track-show-pause-container-small" onClick={() => this.props.pauseTrack()}>
                <svg className="track-show-progress-svg-small">
                    <circle className="track-show-progress-background-small" />
                    <circle className="track-show-progress-circle-small"
                        style={{
                            strokeDasharray: `${circumference} ${circumference}`,
                            strokeDashoffset: `${(circumference) - (this.props.percent / 100) * (circumference)}`
                        }} />
                </svg>
                <FontAwesomeIcon icon={faPause} className="track-show-pause-icon-small" />
            </div >);
        }
        return (<div className="track-show-play-container-small" onClick={() => this.props.changeTrack(this.props.track.id)}>
            <svg className="track-show-progress-svg-small">
                <circle className="track-show-progress-background-small" />
                {this.props.track.id === this.props.currentTrack ?
                    <circle className="track-show-progress-circle-small"
                        style={{
                            strokeDasharray: `${circumference} ${circumference}`,
                            strokeDashoffset: `${(circumference) - (this.props.percent / 100) * (circumference)}`
                        }} /> : null
                }
            </svg>
            <FontAwesomeIcon icon={faPlay} className="track-show-play-icon-small" />
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
        this.props.deleteTrack(this.props.track.id)
            .then(() => this.props.fetchCurrentUser(this.props.currentUser.username))
            .then(() => (this.props.history.push("/"))); 
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

        if (secondsSince < 1) return `just now`;
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

    handleFavorites() {
        if (this.props.currentUser.favorites.includes(this.props.track.id)) {
            this.props.deleteFavoriteTrack(this.props.track.id).then(trackId => {
                if (trackId === this.props.track.id) {
                    this.props.fetchCurrentUser(this.props.currentUser.username)
                }
            });
        } else {
            this.props.createFavoriteTrack(this.props.track.id).then(trackId => {
                if (trackId === this.props.track.id) {
                    this.props.fetchCurrentUser(this.props.currentUser.username)
                }
            });;
        }
    }

    handleComment(e) {
        e.preventDefault();
        this.setState({
            commentText: e.currentTarget.value
        });
    }

    handleSubmitComment() {
        if ((this.state.commentText.length > 0) && (this.props.currentUser !== null)) {
            this.props.createComment({
                body: this.state.commentText,
                track_id: this.props.track.id,
            }).then((trackId) => {
                if (this.props.track.id === trackId) {
                    this.setState({
                        commentText: "",
                    })
                    this._loading.style.display = "none"
                    this.props.fetchTrack(this.props.match.params.username, this.props.match.params.title);
                }
            })
        }
    }

    render() {
        
        const formattedComments = this.props.track ? (this.props.track.comments !== undefined ?
            Object.values(this.props.track.comments).filter(comment => !comment.parent_comment_id).slice().reverse().map((comment) => (
                
                <CommentContainer
                    key={comment.id}
                    comment={comment}
                    comments={this.props.comments}
                    track={this.props.track}
                    currentUser={this.props.currentUser}
                    commentUsers={this.props.commentUsers}
                />
                
            )) : null) : null;


        if (this.props.track === null) {
            return <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
        }

        return (
            (this.state.loaded && this.props.track) ?
            <>
                { this.state.showSmallPlayer ?
                    <section className="track-show-small-header-container">
                        <div className="track-show-small-header">
                            <div className="track-show-small-header-left">
                                <div className="track-show-small-header-artwork">
                                    <img src={this.props.track.trackArtworkUrl ? this.props.track.trackArtworkUrl : window.defaultArtwork} />
                                </div>
                                <div className="track-show-small-header-play-pause-container">
                                    {this.playPauseSmall()}
                                </div>
                                <div className="track-show-author-small-container">
                                    <div className="track-show-author-small">
                                        <b>{this.props.track.title}</b>
                                        <span>uploaded by
                                            <Link to={`/${this.props.user.username}`}>{this.props.user.display_name}</Link>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div className="track-show-small-header-right">
                                <div>
                                    {this.props.currentUser ?
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
                            </div>
                        </div>
                    </section>
                    : null
                }
                
                <section className="track-show-header">

                    <div className="track-show-header-inner-container">

                        <div className="track-show-content-container">

                            <section className="track-show-title-container">
                                <div className="track-show-play-pause">
                                    {this.playPause()}
                                </div>

                                <div className="track-show-inner-title">
                                    <h1>
                                        <Link to={`/${this.props.user.username}/${this.props.track.title}`}>{this.props.track.title}</Link>
                                    </h1>
                                    <div>uploaded by <Link to={`/${this.props.user.username}`}>{this.props.user.display_name}</Link></div>
                                </div>
                            </section>
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
                                    <button className={`track-show-action-button${this.props.currentUser ? (this.props.currentUser.favorites.includes(this.props.track.id) ? "-favorited" : "" ) : ""}`} 
                                        onClick={() => this.props.currentUser ? this.handleFavorites() : this.props.openModal("login")} >
                                        <FontAwesomeIcon icon={faHeart} />
                                        {this.props.currentUser ? (this.props.currentUser.favorites.includes(this.props.track.id) ? "Favorited" : "Favorite") : "Favorite"}
                                    </button>

                                    <button className="track-show-action-button"
                                            onClick={() => this.props.openShareModal((`${window.origin}/#/${this.props.user.username}/${this.props.track.title}`).split(" ").join("%20"))}>
                                        <FontAwesomeIcon icon={faShareSquare} />
                                        Share
                                    </button>

                                    { this.props.track.user_id === this.props.currentUserId ? 
                                        <>
                                            <Link to={`/${this.props.currentUser.username}/${this.props.track.title}/edit`}>
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
                                                        <div className="track-show-confirm-delete" onClick={() => this.handleDelete()}>Confirm Deletion</div>
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
                            <div className="comment-form-container">
                                
                                <div>

                                    <div className="comment-avatar">
                                        <img src={this.props.currentUser ? (this.props.currentUser.userPictureUrl || window.defaultAvatar) : window.commentAvatar} />
                                    </div>
                                    <form className="comment-form"
                                        onSubmit={this.props.currentUser ? this.handleSubmitComment.bind(this) : () => this.props.openModal("login")} onKeyPress={(e) => {
                                            if (e.target.className === "comment-input") {
                                                return;
                                            }
                                            (e.key === 'Enter') && e.preventDefault();
                                        }}
                                    >
                                        <textarea className="comment-input" placeholder={`What did you think of ${this.props.track.title}?`} 
                                            maxLength="1000"
                                            value={this.state.commentText}
                                            onChange={e => this.handleComment(e)}
                                        />
                                        <div className="comment-form-button-container">
                                            <button
                                                disabled={this.state.commentText.length === 0}
                                                onClick={() => this._loading.style.display = ""}
                                                >Post Comment</button>
                                        </div>
                                    </form>

                                </div>

                            </div>
                            <div>
                                {formattedComments}
                            </div>
                            {this.props.track.comments !== undefined ? (Object.values(this.props.track.comments).length > 0 ? <span className="track-index-bottom-cloud"><FontAwesomeIcon icon={faCloud} /></span> : null) : null}
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
                                            user={this.props.user}
                                            date={this.formatDate(subTrack.created_at)}
                                        />
                                    ))}
                                </ul> 
                            </> : null
                        }
                        <TrackIndexInfo />
                    </section>
                </section>
                <div ref={(l) => this._loading = l} className="loading-spinner-background" style={{ display: "none" }}><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
            </>
            :
            <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
        )
    }
}

export default TrackShow