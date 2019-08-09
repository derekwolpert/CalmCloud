import React from 'react';

class TrackIndexNav extends React.Component {

    constructor(props) {
        super(props);
    }

    render() {

        return (
            <section className="track-index-right-sidebar">
                <div className="track-index-footer-nav">
                    <div><span>CalmCloud</span> is a clone of the online music streaming</div>
                    <div>service <span><a href="https://www.mixcloud.com">Mixcloud</a></span> created by <span>Derek Wolpert.</span></div>
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