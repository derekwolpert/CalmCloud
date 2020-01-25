import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faInfinity, faEdit, faMusic } from '@fortawesome/free-solid-svg-icons';

class TrackUploadGuest extends React.Component {
    constructor(props) {
        super(props);
    }

    componentDidMount() {
        window.scrollTo(0, 0);
        document.title = "Upload | CalmCloud";
    }


    render() {
        return (
            <section className="track-upload-container">
                <h1>Upload Music, Nature Sounds, Guided Meditations &amp; more!</h1>

                <div className="track-upload-inner-container">

                    <section className="track-upload-reasons">
                        <div className="upload-reason-1">
                            <div className="upload-reason-icon-1">
                                <FontAwesomeIcon icon={faInfinity} />
                            </div>
                            <h3 className="upload-reason-title">
                                Unlimited Uploads
                            </h3>
                        </div>

                        <div className="upload-reason-2">
                            <div className="upload-reason-icon-2">
                                <FontAwesomeIcon icon={faEdit} />
                            </div>
                            <h3 className="upload-reason-title">
                                Customize Track Information
                            </h3>
                        </div>

                        <div className="upload-reason-3">
                            <div className="upload-reason-icon-3">
                                <FontAwesomeIcon icon={faMusic} />
                            </div>
                            <h3 className="upload-reason-title">
                                Share with CalmCloud Community
                            </h3>
                        </div>

                    </section>

                    <section className="track-upload-form">
                        <div className="audio-file-input-container-disabled" />
                        <div className="track-title-input-container">
                            <span>
                                <input type="text"
                                    className="track-title-input"
                                    placeholder="Choose a title for your upload"
                                    maxLength="100" />
                            </span>
                        </div>

                        <div className="track-upload-next-stage"
                            onClick={() => this.props.openModal('signup')}>
                            Join for free to upload
                        </div>
                    </section>

                </div>

            </section>
        );
        
    };
}

export default TrackUploadGuest;