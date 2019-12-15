import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faGithub, faLinkedinIn, faAngellist } from '@fortawesome/free-brands-svg-icons';
import { faExternalLinkAlt } from '@fortawesome/free-solid-svg-icons';
import { faEnvelope } from '@fortawesome/free-regular-svg-icons';

class TrackIndexInfo extends React.Component {

    constructor(props) {
        super(props);
    }

    render() {

        return (
            <>
                <h1>CalmCloud Info</h1>
                <div className="track-index-footer-nav">
                    <div><span>CalmCloud</span> was created by <span><a href="https://www.derekwolpert.com/" target="_blank">Derek Wolpert</a></span>, and is inspired by the music streaming service <span><a href="https://www.mixcloud.com" target="_blank">Mixcloud</a></span>.</div>
                    <section style={{ margin: "10px 0" }} className="track-index-sidebar-nav-bar" />
                    <div>For more information about this project and the</div>
                    <div>developer please visit the links below:</div>
                    <a href="https://github.com/derekwolpert/CalmCloud" target="_blank"><FontAwesomeIcon icon={faGithub} /><span>CalmCloud's GitHub Repository</span></a>
                    <a href="https://www.linkedin.com/in/derek-wolpert/" target="_blank"><FontAwesomeIcon icon={faLinkedinIn} /><span>Derek Wolpert's LinkedIn Profile</span></a>
                    <a href="https://angel.co/derek-wolpert" target="_blank"><FontAwesomeIcon icon={faAngellist} /><span>Derek Wolpert's AngelList Profile</span></a>
                    <a href="https://www.derekwolpert.com/" target="_blank"><FontAwesomeIcon icon={faExternalLinkAlt} /><span>Derek Wolpert's Profolio Website</span></a>
                    <a href="mailto: me@derekwolpert.com"><FontAwesomeIcon icon={faEnvelope} /><span>Derek Wolpert's Email</span></a>
                </div>
            </>
        )
    }
}

export default TrackIndexInfo;