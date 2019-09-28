import React from 'react';
import { Link } from 'react-router-dom';
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
                                <Link to="/" className={`track-index-sidebar-nav-${this.props.path === "/" ? "active" : "inactive" }`} >
                                    <div className="track-index-sidebar-nav-icon">
                                        <div>
                                            <FontAwesomeIcon icon={faLayerGroup} />
                                        </div>
                                    </div>
                                    Feed
                                </Link>
                                <Link to="/tracks/new-uploads" className={`track-index-sidebar-nav-${this.props.path === "/tracks/new-uploads" ? "active" : "inactive"}`} >
                                    <div className="track-index-sidebar-nav-icon">
                                        <div>
                                            <FontAwesomeIcon icon={faArrowAltCircleUp} />
                                        </div>
                                    </div>
                                    New Uploads
                                </Link>
                            </div>
                            <div className="track-index-sidebar-nav-bar"/>
                            <div className="track-index-sidebar-nav-group">
                                <Link to="/tracks/favorites" className={`track-index-sidebar-nav-${this.props.path === "/tracks/favorites" ? "active" : "inactive"}`} >
                                    <div className="track-index-sidebar-nav-icon">
                                        <div>
                                            <FontAwesomeIcon icon={faHeart} />
                                        </div>
                                    </div>
                                    Favorites
                                </Link>        
                            </div>
                            <div className="track-index-sidebar-nav-bar"/>
                            <div className="track-index-sidebar-nav-group">
                                <Link to="/tracks/trending" className={`track-index-sidebar-nav-${this.props.path === "/tracks/trending" ? "active" : "inactive"}`}>
                                    <div className="track-index-sidebar-nav-icon">
                                        <div>
                                            <FontAwesomeIcon icon={faFire} />
                                        </div>
                                    </div>
                                    Trending
                                </Link>
                            </div>
                        </nav>
                    </div>
                </section>
            </div>
        )
    }
}

export default TrackIndexSidebar;


