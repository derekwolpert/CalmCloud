import React from 'react';

class TrackIndexStats extends React.Component {

    constructor(props) {
        super(props);
    }

    render() {

        return (
            this.props.currentUser ?
                <section className="track-index-stats">
                    <h1>Your Stats</h1>
                    <dl>
                        <dt>Total Uploads</dt>
                        <dd>{this.props.currentUser.uploadCount}</dd>
                        <dt>Total Plays</dt>
                        <dd>{this.props.currentUser.playCounts}</dd>
                        <dt>Favorites</dt>
                        <dd>{this.props.currentUser.favorites.length}</dd>
                        <dt>Comments</dt>
                        <dd>{this.props.currentUser.commentsCount}</dd>
                    </dl>
                </ section> : null
        )
    }
}

export default TrackIndexStats;