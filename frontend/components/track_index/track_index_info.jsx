import React from 'react';

class TrackIndexInfo extends React.Component {

    constructor(props) {
        super(props);
    }

    render() {

        return (
            <>
                <h1>CalmCloud Info</h1>
                <div className="track-index-footer-nav">
                    <div><span>CalmCloud</span> is a clone of the online music streaming</div>
                    <div>service <span><a href="https://www.mixcloud.com" target="_blank">Mixcloud</a></span> created by <span><a href="https://www.derekwolpert.com/" target="_blank">Derek Wolpert</a>.</span></div>
                    <section style={{ margin: "10px 0" }} className="track-index-sidebar-nav-bar" />
                    <div>For more information about this project and the</div>
                    <div>developer please visit the links below:</div>
                    <br />
                    <a href="https://github.com/derekwolpert/CalmCloud" target="_blank">CalmCloud's GitHub Repository</a><br />
                    <a href="https://www.linkedin.com/in/derek-wolpert/" target="_blank">Derek Wolpert's LinkedIn Profile</a><br />
                    <a href="https://angel.co/derek-wolpert" target="_blank">Derek Wolpert's AngelList Profile</a><br />
                    <a href="https://www.derekwolpert.com/" target="_blank">Derek Wolpert's Profolio Website</a>
                </div>
            </>
        )
    }
}

export default TrackIndexInfo;