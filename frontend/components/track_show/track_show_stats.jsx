import React from 'react';
import { Link } from 'react-router-dom';

class TrackShowStats extends React.Component {

    constructor(props) {
        super(props);
    }

    render() {

        return (
            <section className="track-index-stats">
                <h1>Stats for this Upload</h1>
                <dl>
                    <dt>Total Plays</dt>
                    <dd>{this.props.track.play_count}</dd>
                    <dt>Favorites</dt>
                    <dd>{this.props.track.favoriteCount}</dd>
                    <dt>Comments</dt>
                    <dd>{this.props.track.commentCount}</dd>
                </dl>
            </ section>
        )
    }
}
  
export default TrackShowStats;