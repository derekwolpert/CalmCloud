import React from 'react';
import { Link } from 'react-router-dom';

class TrackShowSidebar extends React.Component {

    constructor(props) {
        super(props);
    }

    render() {

        if (!this.props.track) {
            return null;
        }

        return (
            <li>
                <Link to={`/track/${this.props.track.id}`}>
                    <div className="track-show-sidebar-artwork">
                        <img src={this.props.track.trackArtworkUrl ? this.props.track.trackArtworkUrl : window.defaultArtwork} />
                    </div>
                    <b>{this.props.track.title}</b>
                    <span>{`added ${this.props.date}`}</span>
                </Link>
            </li>
        )

    }
}

export default TrackShowSidebar;