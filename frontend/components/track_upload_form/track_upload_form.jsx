import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faInfinity, faEdit, faMusic } from '@fortawesome/free-solid-svg-icons';

class TrackUploadForm extends React.Component {


    render() {
        return (
            <section className="track-upload-container">
                <h1>Upload</h1>

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

                </div>

          </section>
        );
    }

}

export default TrackUploadForm;