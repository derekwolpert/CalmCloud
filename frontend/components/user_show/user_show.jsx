import React from 'react';
import { Link } from 'react-router-dom';
import TrackIndexItem from "../track_index/track_index_item";
import TrackIndexStats from "../track_index/track_index_stats";
import TrackIndexInfo from "../track_index/track_index_info"
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faPlay, faCloud, faChevronDown, faChevronUp, faMapMarkerAlt, faChevronRight } from '@fortawesome/free-solid-svg-icons';
import { faFrown } from '@fortawesome/free-regular-svg-icons';

class UserShow extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            loaded: false,
            showDropdown: false,
            showFullDescription: false,
            height: null,
        };
        this.handleContent = this.handleContent.bind(this);
        this.findUser = this.findUser.bind(this);
        this.handleSusbcribeButton = this.handleSusbcribeButton.bind(this);
        this.handleFollowFollowerButton = this.handleFollowFollowerButton.bind(this);
        this.handlePlayButton = this.handlePlayButton.bind(this);
        this.handlePlayPresence = this.handlePlayPresence.bind(this);
        this.handleFollowingSidebar = this.handleFollowingSidebar.bind(this);
        this._biography = React.createRef();
    }

    componentDidMount() {
        window.scrollTo(0, 0);
        this.props.fetchUser(this.props.match.params.username).then(() => {
            this.setState({
                loaded: true
            });
        });
        if (this.props.user) document.title = `${this.props.user.display_name} | CalmCloud`;
    }

    componentWillUnmount() {
        this.setState({
            loaded: false,
            showDropdown: false,
            showFullDescription: false,
        });
    }

    componentDidUpdate(prevProps) {
        if (this.props.match.params.username !== prevProps.match.params.username) {
            this.setState({
                loaded: false,
                showDropdown: false,
                showFullDescription: false,
                height: null,
            });
            document.title = `${this.props.user.display_name} | CalmCloud`;
            window.scrollTo(0, 0);
            this.props.fetchUser(this.props.match.params.username).then(() => {
                this.setState({
                    loaded: true
                });
            });
        } else if (this.props.match.path !== prevProps.match.path) {
            window.scrollTo(0, 0);
            this.setState({
                showDropdown: false,
                showFullDescription: false,
            });
        } else if ((this.state.loaded && (this.state.height === null))) {
            this.setState({
                height: this._biography.offsetHeight,
            });
        }

        if (this.props.currentUser && !prevProps.currentUser) {
            this.setState({
                loaded: false
            });
            this.props.fetchUser(this.props.match.params.username).then(() => {
                this.setState({
                    loaded: true
                });
            });
        }
    }

    handleContent(items) {

        if ((this.props.match.path === "/:username") || (this.props.match.path === "/:username/uploads")) {
            return (
                <>
                    <h1>Uploads</h1>
                    {items}
                    {this.props.tracks.length > 0 ? <span className="track-index-bottom-cloud"><FontAwesomeIcon icon={faCloud} /></span> : 
                        <div className="user-show-no-content">
                            <FontAwesomeIcon icon={faFrown} />
                            { this.props.currentUser ? (
                                this.props.currentUser.id === this.props.user.id ?
                                <>
                                    <b>Looks like you haven't uploaded any content yet.</b>
                                    Whenever you're ready to share with the world we'll be here ready to support you!
                                </>
                                : 
                                <>
                                    <b>Looks like {this.props.user.display_name} hasn't uploaded anything yet!</b>
                                    Hopefully they will in the future, but until then there is no content here.
                                </>
                                ) :
                                <>
                                    <b>Looks like {this.props.user.display_name} hasn't uploaded anything yet!</b>
                                    Hopefully they will in the future, but until then there is no content here.
                                </>
                            }
                        </div>
                    }
                </>
            )
        }
        if (this.props.match.path === "/:username/favorites") {
            return (
                <>
                    <h1>Favorites</h1>
                    {items}
                    {this.props.favoriteTracks.length > 0 ? <span className="track-index-bottom-cloud"><FontAwesomeIcon icon={faCloud} /></span> : 
                        <div className="user-show-no-content">
                            <FontAwesomeIcon icon={faFrown} />
                            { this.props.currentUser ? (
                                this.props.currentUser.id === this.props.user.id ?
                                <>
                                    <b>Looks like you haven't favorited any uploads yet!</b>
                                    Why not spend some time exploring uploads by other users? Find some content you will love!
                                </>
                                : 
                                <>
                                    <b>Looks like {this.props.user.display_name} hasn't favorited any uploads yet!</b>
                                    Hopefully they will in the future, but until then there is no content here.
                                </>
                                ) :
                                <>
                                    <b>Looks like {this.props.user.display_name} hasn't favorited any uploads yet!</b>
                                    Hopefully they will in the future, but until then there is no content here.
                                </>
                            }
                        </div>
                    }
                </>
            )
        }

        if ((this.props.match.path === "/:username/followers") || (this.props.match.path === "/:username/following")) {
            const users = (this.props.match.path === "/:username/followers") ? this.props.user.followers : this.props.user.following;

            if (users.length === 0) {
                return (
                    <>
                        <h1>{(this.props.match.path === "/:username/followers") ? `${this.props.currentUser.followers.length} Followers` : `Following ${this.props.currentUser.following.length}`}</h1>
                        <div className="user-show-no-content">
                            <FontAwesomeIcon icon={faFrown} />
                            {this.props.currentUser ? (
                                this.props.currentUser.id === this.props.user.id ?
                                    <>
                                        { (this.props.match.path === "/:username/followers") ? <b>Oh no, looks like you do not have any followers yet!</b> : <b>Oh no, looks like you are not following anyone yet!</b> }
                                        { (this.props.match.path === "/:username/followers") ? "Unfortunately until you have followers there isn't any content to show here." : "Why not start by exploring our community? Find other users who share content you can love." }
                                    </>
                                    :
                                    <>
                                        {(this.props.match.path === "/:username/followers") ? <b>Looks like {this.props.user.display_name} doesn't have any followers yet!</b> : <b>Looks like {this.props.user.display_name} is not following anyone yet!</b> }
                                        Hopefully they will in the future, but until then there is no content here.
                                    </>
                            ) :
                                <>
                                    {(this.props.match.path === "/:username/followers") ? <b>Looks like {this.props.user.display_name} doesn't have any followers yet!</b> : <b>Looks like {this.props.user.display_name} is not following anyone yet!</b>}
                                    Hopefully they will in the future, but until then there is no content here.
                                </>
                            }
                        </div>
                    </>
                )
            }

            const followers = users.slice().reverse().map((userId, idx) => {
                const user = this.findUser(userId);
                return (
                    <li className="user-show-follower-item" key={idx}>
                        <span className="user-show-follower-container">
                            <span className="user-show-follower-profile-pic">
                                <Link to={`/${user.username}`}>
                                    <div className="user-show-follower-profile-pic-container">
                                        <img src={user.userPictureUrl || window.defaultAvatar}></img>
                                    </div>
                                </Link>
                            </span>
                            <b><Link to={`/${user.username}`}>{user.display_name}</Link></b>
                            <div>{user.followers.length} followers</div>
                            <small>{user.city ? `${user.city}${user.country ? ", " : null}` : null}{user.country ? user.country : null}</small>
                        </span>
                        {this.handleFollowFollowerButton(user)}
                    </li>
                )
            });

            return (
                <>
                    <h1>{(this.props.match.path === "/:username/followers") ? `${this.props.user.followers.length} Followers` : `Following ${this.props.user.following.length}`}</h1>
                    <ul>{followers}</ul>
                    {this.props.user.followers.length > 0 ? <span className="track-index-bottom-cloud"><FontAwesomeIcon icon={faCloud} /></span> : null}
                </>
            )
        }
    }

    findUser(userId) {
        for (let user in this.props.users) {
            if (this.props.users[user].id === userId) {
                return this.props.users[user];
            }
        }
    }

    handleSusbcribeButton() {
        if (this.props.currentUser === null) {
            return (
                <div className="user-show-follow-button" onClick={() => this.props.openModal("login")}>
                    <span>Follow</span>
                </div>
            )
        };

        if (this.props.currentUser.following.includes(this.props.user.id)) {
            return (
                <>
                    <div className="user-show-following-button" onClick={() => this.setState({showDropdown: !this.state.showDropdown})}>
                        <span>Following</span>
                        <FontAwesomeIcon icon={this.state.showDropdown ? faChevronUp : faChevronDown} />
                        {this.state.showDropdown ?
                            <div>
                                <ul className="user-show-dropdown-content">
                                    <li onClick={() => this.props.deleteSubscribeUser(this.props.user.id).then(() => (
                                        this.props.fetchCurrentUser(this.props.currentUser.username)))}>
                                            Unfollow
                                    </li>
                                </ul>
                            </div> : null
                        }
                    </div>
                </>
            )
        };

        if (this.props.currentUser.id === this.props.user.id) {
            return null;
        }

        return (
            <div className="user-show-follow-button"
                onClick={() => this.props.createSubscribeUser(this.props.user.id).then(() => (
                this.props.fetchCurrentUser(this.props.currentUser.username)))}>
                <span>Follow</span>
            </div>
        )
    }

    handleFollowFollowerButton(user) {
        if (this.props.currentUser === null) {
            return (
                <div className="user-show-follower-follow-button" onClick={() => this.props.openModal("login")}>
                    Follow
                </div>
            )
        }
        if (this.props.currentUser.id === user.id) {
            return null;
        }

        if (this.props.currentUser.following.includes(user.id)) {
            return (
                <div className="user-show-follower-following-button"
                    onClick={() => this.props.deleteSubscribeUser(user.id).then(() => (
                        this.props.fetchCurrentUser(this.props.currentUser.username)))}>
                    Following
                </div>
            )
        }
        return (
            <div className="user-show-follower-follow-button"
                onClick={() => this.props.createSubscribeUser(user.id).then(() => (
                    this.props.fetchCurrentUser(this.props.currentUser.username)))}>
                Follow
            </div>
        )
    }

    handlePlayButton() {
        let trackId = null
        if ((this.props.match.path === "/:username/favorites") && (this.props.favoriteTracks.length > 0)) {
            trackId = this.props.favoriteTracks[0].id;
        } else if ((this.props.tracks.length > 0) && ((this.props.match.path === "/:username/uploads") || (this.props.match.path === "/:username"))) {
            trackId = this.props.tracks[0].id
        }

        if (this.props.currentTrack !== trackId) {
            this.props.changeTrack(trackId)
        } else {
            if (this.props.playing) {
                this.props.pauseTrack()
            } else {
                this.props.changeTrack(trackId)
            }
        }
    }

    handlePlayPresence() {
        if ((this.props.match.path === "/:username/favorites") && (this.props.favoriteTracks.length > 0)) {
            return true;
        } else if ((this.props.tracks.length > 0) && ((this.props.match.path === "/:username/uploads") || (this.props.match.path === "/:username"))) {
            return true;
        }
        return false;
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
                {para.split(" ").map((word, key) => (
                    this.isUrl(word) ?
                        <a href={this.formatHref(word)} key={key} target="_blank">{key !== 0 ? ` ${word}` : word} </a>
                        :
                        key !== 0 ? ` ${word}` : word)
                )}
            </>
        )
    }

    handleFollowingSidebar() {

        const users = this.props.user.following.slice().reverse().slice(0, 3).map(userId => this.findUser(userId));

        if (users.includes(undefined)) return null;

        return users.map((user, idx) => {
            return (
                <li className="user-show-follower-item" key={idx}>
                    <span className="user-show-follower-container">
                        <span className="user-show-follower-profile-pic">
                            <Link to={`/${user.username}`}>
                                <div className="user-show-follower-profile-pic-container">
                                    <img src={user.userPictureUrl || window.defaultAvatar}></img>
                                </div>
                            </Link>
                        </span>
                        <b><Link to={`/${user.username}`}>{user.display_name}</Link></b>
                        <div>{user.followers.length} followers</div>
                        <small>{user.city ? `${user.city}${user.country ? ", " : null}` : null}{user.country ? user.country : null}</small>
                    </span>
                    {this.handleFollowFollowerButton(user)}
                </li>
            )
        })
    }

    render() {

        if (this.props.user === null) {
            return <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
        }

        if (this.props.user.favorites === undefined) {
            return <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
        }

        if ((this.props.match.path === "/:username") || (this.props.match.path === "/:username/uploads")) {
            if (this.props.tracks === null) {
                return <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
            }
            if (this.props.tracks.includes(undefined)) {
                return <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
            }
        }

        if (this.props.match.path === "/:username/favorites") {
            if (this.props.favoriteTracks === null) {
                return <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
            }
            if (this.props.favoriteTracks.includes(undefined)) {
                return <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
            }
        }

        const tracks = (this.props.match.path === "/:username/favorites") ? this.props.favoriteTracks : this.props.tracks;

        const indexItems = tracks.map((track, idx) => (
            <TrackIndexItem
                key={track.id}
                track={track}
                position={idx + 1}
                user={this.findUser(track.user_id)}
                changeTrack={this.props.changeTrack}
                currentTrack={this.props.currentTrack}
                currentUser={this.props.currentUser}
                pauseTrack={this.props.pauseTrack}
                playing={this.props.playing}
                percent={this.props.percent}
                path={this.props.match.path}
                createFavoriteTrack={this.props.createFavoriteTrack}
                deleteFavoriteTrack={this.props.deleteFavoriteTrack}
                fetchCurrentUser={this.props.fetchCurrentUser}
                openModal={this.props.openModal}
                openShareModal={this.props.openShareModal}
                currentPercent={this.props.currentPercent}
            />));

        return (
            this.state.loaded ?
                <> 
                    <div className="user-show-profile-header-container">
                        <section className="user-show-profile-header">
                            {this.props.user.userCoverUrl ? <div className="user-show-cover-image"><div style={{backgroundImage: `url(${this.props.user.userCoverUrl})`}} /></div> : null }
                            <div className="user-show-profile-header-inner-container">
                                <Link to={`/${this.props.user.username}`}>
                                    <div className="user-show-profile-pic-container">
                                        <img src="user-show-profile-pic" src={this.props.user.userPictureUrl ? this.props.user.userPictureUrl : window.defaultAvatar} />
                                    </div>
                                </Link>
                                <div className="user-show-username">
                                    <h1>{this.props.user.display_name}</h1>
                                    <h2 style={{ color: (this.props.match.path === "/:username/followers") ? "#4fa6d3" : ""}}><Link to={`/${this.props.user.username}/followers`}>{this.props.user.followers.length} Followers</Link></h2>
                                    <div className="user-show-actions">
                                        {this.handleSusbcribeButton()}
                                        { this.props.currentUser ?
                                            ((this.props.currentUser.id === this.props.user.id) ?
                                                <Link to="/settings">
                                                    <div className="user-show-button">
                                                        <span>Update Profile</span>
                                                    </div>
                                                </Link>
                                                : null)
                                            : null
                                        }
                                        { this.handlePlayPresence() ?
                                            <div className="user-show-play-button" onClick={() => this.handlePlayButton()}>
                                                <FontAwesomeIcon icon={faPlay} />
                                                <span>Play</span>
                                            </div> : null
                                        }
                                        <div className="user-show-button"
                                            onClick={() => this.props.openShareModal((`${window.origin}/#/${this.props.user.username}`).split(" ").join("%20"))}>
                                            <span>Share</span>
                                        </div>
                                    </div>
                                </div>
                                <div className="user-show-profile-navigation">
                                    <ul className="user-show-nav-tabs">
                                        <li>
                                            <Link className={`user-show-nav-tab${((this.props.match.path === "/:username") || (this.props.match.path === "/:username/uploads")) ? "-active" : ""}`}
                                                to={`/${this.props.user.username}/uploads`}>
                                                <b>{this.props.tracks.length}</b>
                                                <span>Uploads</span>
                                            </Link>
                                        </li>
                                        <li>
                                            <Link className={`user-show-nav-tab${(this.props.match.path === "/:username/favorites") ? "-active" : ""}`}
                                                to={`/${this.props.user.username}/favorites`}>
                                                <b>{this.props.user.favorites.length}</b>
                                                <span>Favorites</span>
                                            </Link>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </section>
                    </div>
                    <div className="user-show-content">
                        <div className="user-show-inner-container">
                            <section className="user-show-uploads">
                                {this.handleContent(indexItems)}
                            </section>
                            <section className="user-show-sidebar">
                                { (this.props.user.city || this.props.user.country) ?
                                    <span className="user-show-location">
                                        <FontAwesomeIcon icon={faMapMarkerAlt} />
                                        {this.props.user.city ? `${this.props.user.city}${this.props.user.country ? ", " : null}` : null}{this.props.user.country ? this.props.user.country : null}
                                    </span> : null
                                }

                                <div className="user-show-biography">
                                    { !this.state.height ?
                                        (this.props.user.biography ?
                                            <div ref={(a) => this._biography = a}>
                                                { this.props.user.biography.split("\n").filter(Boolean).map((el, key) => (
                                                    <p key={key}>{this.formatUrlsInDescription(el)}</p>)
                                                )}
                                            </div> : <div ref={(a) => this._biography = a} />) 
                                        :
                                        this.state.height > 120 ?
                                            ( this.state.showFullDescription ?
                                                ( this.props.user.biography ? this.props.user.biography.split("\n").filter(Boolean).map((el, key) => (
                                                    <p key={key}>{this.formatUrlsInDescription(el)}</p>)) : null
                                                )
                                                :
                                                <div className="user-show-biography-fade" onClick={() => this.setState({ showFullDescription: true })}>
                                                    {this.props.user.biography ? this.props.user.biography.split("\n").filter(Boolean).map((el, key) => (
                                                        <p key={key}>{this.formatUrlsInDescription(el)}</p>)
                                                    ) : null
                                                    }
                                                </div> 
                                            )
                                            :
                                            (this.props.user.biography ? this.props.user.biography.split("\n").filter(Boolean).map((el, key) => (
                                                <p key={key}>{this.formatUrlsInDescription(el)}</p>)) : null
                                            )
                                    }

                                </div>
                                { this.props.currentUser ? 
                                    (this.props.currentUser.id === this.props.user.id ?
                                    <TrackIndexStats
                                        currentUser={this.props.currentUser}
                                        totalPlaycounts={this.props.tracks.length > 0 ? this.props.tracks.map(track => track.play_count).reduce((acc, num) => acc + num) : 0}
                                        totalUploads={this.props.currentUser.favorites.length} /> : null)
                                    : null
                                }
                                { this.props.user.following.length > 0 ?
                                    <section className="user-show-sidebar-following">
                                        <h1>Following
                                            <Link to={`/${this.props.user.username}/following`} style={{ color: (this.props.match.path === "/:username/following") ? "rgb(79, 166, 211)" : "" }}>
                                                {this.props.user.following.length}
                                                <FontAwesomeIcon icon={faChevronRight} />
                                            </Link>
                                        </h1>
                                        <ul>{this.handleFollowingSidebar()}</ul>
                                    </section>

                                    : null
                                }
                                <TrackIndexInfo />
                            </section>
                        </div>
                    </div>
                </>
                : 
                <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
        )
    } 
}

export default UserShow;