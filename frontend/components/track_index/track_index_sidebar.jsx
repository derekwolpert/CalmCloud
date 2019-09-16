import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faLayerGroup, faArrowAltCircleUp, faHeart, faFire } from '@fortawesome/free-solid-svg-icons';

class TrackIndexSidebar extends React.Component {

    constructor(props) {
        super(props);
    }

    render() {
        return (
            <div className="track-index-sidebar-container">
                <section>
                    <div className="track-index-sidebar-inner-container">
                        <div className="track-index-sidebar-profile-border">
                            <div className="track-index-profile-pic">
                                <img src={this.props.currentUser.userPictureUrl ? this.props.currentUser.userPictureUrl : window.defaultAvatar} />
                            </div>
                            <span className="track-index-sidebar-profile-link">
                                <div>{this.props.currentUser.display_name}</div>
                                <span>View profile</span>
                            </span>
                        </div>
                        <nav>
                            <div className="track-index-sidebar-nav-group">
                                
                                <div className={`track-index-sidebar-nav-${this.props.path === "/" ? "active" : "inactive" }`} >
                                    <div className="track-index-sidebar-nav-icon">
                                        <div>
                                            <FontAwesomeIcon icon={faLayerGroup} />
                                        </div>
                                    </div>
                                    Feed
                                </div>
                                <div className="track-index-sidebar-nav-inactive">
                                    <div className="track-index-sidebar-nav-icon">
                                        <div>
                                            <FontAwesomeIcon icon={faArrowAltCircleUp} />
                                        </div>
                                    </div>
                                    New Shows
                                </div>
                            </div>
                            <div className="track-index-sidebar-nav-bar"/>
                            <div className="track-index-sidebar-nav-group">
                                <div className="track-index-sidebar-nav-inactive">
                                    <div className="track-index-sidebar-nav-icon">
                                        <div>
                                            <FontAwesomeIcon icon={faHeart} />
                                        </div>
                                    </div>
                                    Favorites
                                </div>        
                            </div>
                            <div className="track-index-sidebar-nav-bar"/>
                            <div className="track-index-sidebar-nav-group">

                                <div className="track-index-sidebar-nav-inactive">
                                    <div className="track-index-sidebar-nav-icon">
                                        <div>
                                            <FontAwesomeIcon icon={faFire} />
                                        </div>
                                    </div>
                                    Trending
                                </div>

                            </div>
                        </nav>
                    </div>
                </section>
            </div>
        )
    }
}

export default TrackIndexSidebar;


