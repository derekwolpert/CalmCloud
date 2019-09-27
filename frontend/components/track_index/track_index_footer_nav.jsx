import React from 'react';

class TrackIndexNav extends React.Component {

    constructor(props) {
        super(props);
        this.handleTotalPlaycounts = this.handleTotalPlaycounts.bind(this);
        this.handleTotalUploads = this.handleTotalUploads.bind(this);
    }

    handleTotalPlaycounts() {
        let total = 0;
        this.props.tracks.forEach(track => {
            if (track.user_id === this.props.currentUserId) total += track.play_count;
        });
        return total;
    }

    handleTotalUploads() {
        let total = 0;
        this.props.tracks.forEach(track => {
            if (track.user_id === this.props.currentUserId) total += 1;
        });
        return total;
    }

    render() {

        return (
            <section className="track-index-right-sidebar">
                { this.props.tracks.length > 0 ?
                    <section className="track-index-stats">
                        <h1>Your Stats</h1>
                        <dl>
                            <dt>Total Plays</dt>
                            <dd>{this.handleTotalPlaycounts()}</dd>
                            <dt>Total Uploads</dt>
                            <dd>{this.handleTotalUploads()}</dd>
                            <dt>Favorites</dt>
                            <dd></dd>
                            <dt>Comments</dt>
                            <dd></dd>
                        </dl>
                    </ section> : null }
                <h1>Information</h1>
                <div className="track-index-footer-nav">
                    <div><span>CalmCloud</span> is a clone of the online music streaming</div>
                    <div>service <span><a href="https://www.mixcloud.com">Mixcloud</a></span> created by <span><a href="https://www.derekwolpert.com/">Derek Wolpert</a>.</span></div>
                    <section style={{ margin: "10px 0" }} className="track-index-sidebar-nav-bar" />
                    <div>For more information about this project and the</div>
                    <div>developer please visit the links below:</div>
                    <br />
                    <div>(links coming soon...)</div>

                </div>

            </section>
        )
    }
}

export default TrackIndexNav;