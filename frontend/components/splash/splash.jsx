import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faHeadphonesAlt, faMicrophoneAlt, faUserFriends, faCloud } from '@fortawesome/free-solid-svg-icons';
import TrackIndexInfo from "../track_index/track_index_info";
import TrackIndexItem from '../track_index/track_index_item';

class Splash extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            trackItemsOrder: null,
            loaded: false,
        };
        this.findUser = this.findUser.bind(this);
    }

    componentDidMount() {
        window.scrollTo(0, 0);
        this.props.fetchAllTracks()
            .then(() => {
                this.setState({
                    trackItemsOrder: Object.values(this.props.tracks).sort((a, b) => (a.play_count >= b.play_count) ? -1 : 1).map(track => track.id),
                    loaded: true
                });
            });

        document.title = "CalmCloud";
    }

    findUser(userId) {
        for (let user in this.props.users) {
            if (this.props.users[user].id === userId) {
                return this.props.users[user];
            }
        }
    }
    
    render() {
        let indexItems;

        if (this.state.trackItemsOrder !== null) {

            indexItems = this.state.trackItemsOrder.map((trackId, idx) => (
                <TrackIndexItem
                    key={trackId}
                    track={this.props.tracks[trackId]}
                    position={idx + 1}
                    user={this.findUser(this.props.tracks[trackId].user_id)}
                    changeTrack={this.props.changeTrack}
                    currentTrack={this.props.currentTrack}
                    currentUser={null}
                    pauseTrack={this.props.pauseTrack}
                    playing={this.props.playing}
                    percent={this.props.percent}
                    path={null}
                    createFavoriteTrack={null}
                    deleteFavoriteTrack={null}
                    fetchCurrentUser={null}
                    openModal={this.props.openModal}
                    openShareModal={this.props.openShareModal}
                    currentPercent={this.props.currentPercent}
                />));
        }

        

        return (
            <>
                <div className="splash-background-image"> <div style={{ backgroundImage: `url(${window.background1URL})` }}/></div>
                <div className="splash-text">
                    <h1 className="splash-title">The online destination for sharing audio</h1>
                    <h2 className="splash-subtitle">Explore a wide collection of sounds ranging from music, podcasts, guided meditations and more.</h2>
                </div>
                <div className="splash-buttons">
                    <button className="splash-login" onClick={() => this.props.openModal('login')}>Demo User Sign in</button>
                    <span className="splash-music-direct" onClick={() => window.scrollTo(0, 1024)}>Start Listening</span>
                </div>
                <div className="splash-signup">
                    <button className="splash-signup-link" onClick={() => this.props.openModal('signup')}><b>Sign up</b> with email</button>
                </div>
                <div className="splash-reasons">
                    <div className="splash-inner-container">

                        <div className="splash-sub-reason">
                            <div className="splash-reason-icon">
                                <FontAwesomeIcon icon={faHeadphonesAlt} />
                            </div>
                            <h3 className="splash-reason-title">Listen</h3>
                            <h4 className="splash-reason-subtitle">Get inspired by audio content uploaded by other users.</h4>
                        </div>
                    
                        <div className="splash-sub-reason">
                            <div className="splash-reason-icon">
                                <FontAwesomeIcon icon={faMicrophoneAlt} />
                            </div>
                            <h3 className="splash-reason-title">Create</h3>
                            <h4 className="splash-reason-subtitle">Upload your own audio creations to share with the world.</h4>
                        </div>

                        <div className="splash-sub-reason">
                            <div className="splash-reason-icon">
                                <FontAwesomeIcon icon={faUserFriends} />
                            </div>
                            <h3 className="splash-reason-title">Connect</h3>
                            <h4 className="splash-reason-subtitle">Interact with other like-minded indiviuals.</h4>
                        </div>
                    
                    </div>
                </div>
                { this.state.loaded ?
                    <div className="splash-content-container">
                        <div className="splash-content">
                            <section className="splash-sidebar-container">
                                <TrackIndexInfo />
                            </section>

                            <section className="track-index-track-container">
                                <h1>Trending Uploads</h1>
                                {indexItems}
                                {this.props.tracks.length > 0 ? <span className="track-index-bottom-cloud"><FontAwesomeIcon icon={faCloud} /></span> : null}
                            </section>

                        </div>
                    </div>
                    :
                    <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
                }
            </>
        );
    }
}

export default Splash;



