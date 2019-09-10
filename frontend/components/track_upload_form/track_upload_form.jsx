import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faInfinity, faEdit, faMusic } from '@fortawesome/free-solid-svg-icons';
import { Link } from 'react-router-dom';


class TrackUploadForm extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            audioFileName: null,
            audioFile: null,
            audioUrl: null,
            title: "",
            nextStage: false,
        };
        this.stageOne = this.stageOne.bind(this);
        this.handleNextStage = this.handleNextStage.bind(this);
        this.stageTwo = this.stageTwo.bind(this);
        this.handlePrevStage = this.handlePrevStage.bind(this);
    }

    handleAudioFile(e) {
        const file = e.currentTarget.files[0];
        const fileReader = new FileReader();

        fileReader.onloadend = () => {
            this.setState({
                audioFileName: `${file.name}, ${(Math.ceil(file.size / ( (1024 * 1024) / 10 )))/10}MB`,
                audioFile: file,
                audioUrl: fileReader.result,
            });
        };
        if (file) {
            fileReader.readAsDataURL(file);
        }
    }

    handleTitle(e) {
        this.setState({ title: e.currentTarget.value });
    }

    handleNextStage() {
        this.setState({ nextStage: true });
    }

    handlePrevStage() {
        this.setState({ nextStage: false });
    }


    handleSubmit(e) {

    }

    stageOne() {

        return (
            <>
                <div className="audio-file-input-container">
                    <input className="audio-file-input" type="file" accept=".mp3, .aac, .m4a, .mp4, .ogg" onChange={this.handleAudioFile.bind(this)} />
                </div>

                <div className="audio-file-input-name">
                    {this.state.audioFileName ? this.state.audioFileName : "Please choose an audio file - MP3, AAC, M4A, MP4 audio or OGG types are accepted."}
                </div>

                <div className="audio-file-input-rules">
                    CalmCloud is intended to host short-form audio content. Please be considerate of size and length of audio file when uploading.
                        </div>

                <div className="track-title-input-container">
                    <span>
                        <input type="text"
                            className="track-title-input"
                            value={this.state.title}
                            onChange={this.handleTitle.bind(this)}
                            placeholder="Choose a title for your upload"
                            maxLength="100" />
                    </span>
                </div>

                <div className={this.state.audioFile && this.state.title ? "track-upload-next-stage" : "track-upload-next-stage-disabled"}
                    onClick={this.state.audioFile && this.state.title ? () => this.handleNextStage() : null}>
                    Continue Upload
                </div>
            </>
        )
    }




    stageTwo() {

        return (
            <>
                <div className="track-upload-name-stage-two">

                    <div className="track-upload-name-stage-two-left">
                        {this.state.audioFileName} <Link to="/">Cancel Upload</Link>
                    </div>

                    <div className="track-upload-name-stage-two-right"
                        onClick={() => this.handlePrevStage()}>
                        Back to Previous Step
                    </div>

                </div>


            </>
        )
    }

    render() {
        return (
            <section className="track-upload-container">
                <h1> {this.state.nextStage ? `Upload ${this.state.title}` : "Upload"}</h1>

                <div className="track-upload-inner-container">
                    {this.state.nextStage ? null : (

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
                    )}

                    <form className="track-upload-form" onSubmit={this.handleSubmit.bind(this)}>
                        {this.state.nextStage === true ? this.stageTwo() : this.stageOne()}
                    </form>

                </div>

          </section>
        );
    }
}

export default TrackUploadForm;