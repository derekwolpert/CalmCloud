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
                        <dt>Total Plays</dt>
                        <dd>{this.props.totalPlaycounts}</dd>
                        <dt>Total Uploads</dt>
                        <dd>{this.props.totalUploads}</dd>
                        <dt>Favorites</dt>
                        <dd>{this.props.currentUser.favorites.length}</dd>
                        <dt>Comments</dt>
                        <dd></dd>
                    </dl>
                </ section> : null
        )
    }
}

export default TrackIndexStats;