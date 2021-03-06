import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faInfinity, faEdit, faMusic, faCloudUploadAlt } from '@fortawesome/free-solid-svg-icons';
import { Link } from 'react-router-dom';
import TrackUploadGuestContainer from "./track_upload_guest_container";


class TrackUploadForm extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            audioFileName: null,
            audioFile: null,
            audioUrl: null,
            audioDuration: null,
            title: "",
            description: "",
            imageFile: null,
            imageUrl: null,
            nextStage: false,
            loaded: false,
        };
        this.stageOne = this.stageOne.bind(this);
        this.handleNextStage = this.handleNextStage.bind(this);
        this.stageTwo = this.stageTwo.bind(this);
        this.handlePrevStage = this.handlePrevStage.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleAudioFile = this.handleAudioFile.bind(this);
        this.handleTitle = this.handleTitle.bind(this);
        this.handleImageFile = this.handleImageFile.bind(this);
        this.handleImageFile = this.handleImageFile.bind(this);
        this.handleTitle = this.handleTitle.bind(this);
        this.handleDescription = this.handleDescription.bind(this);
        this._audio = React.createRef();
        this._loading = React.createRef();
    }

    componentDidMount() {
        window.scrollTo(0, 0);
        document.title = "Upload | CalmCloud";
        if (this.props.currentUsername) {
            this.props.fetchCurrentUser(this.props.currentUsername)
                .then(() => this.setState({
                    loaded: true,
            }));
        }
    }

    componentDidUpdate(prevProps) {

        if (prevProps.currentUsername === undefined && this.props.currentUsername) {
            this.setState({
                loaded: false,
            });
            this.props.fetchCurrentUser(this.props.currentUsername)
                .then(() => this.setState({
                    loaded: true,
            }));
        }
    }

    handleAudioFile(e) {
        const file = e.currentTarget.files[0];
        const fileReader = new FileReader();

        fileReader.onloadend = () => {
            this._audio.src = fileReader.result;
            this._audio.load();

            this.setState({
                audioFileName: `${file.name} (${(Math.ceil(file.size / ( (1024 * 1024) / 10 )))/10}MB)`,
                audioFile: file,
                audioUrl: fileReader.result,
            });

        };
        if (file) {
            fileReader.readAsDataURL(file);
        }
    }

    handleImageFile(e) {
        const file = e.currentTarget.files[0];
        const fileReader = new FileReader();

        fileReader.onloadend = () => {
            this.setState({
                imageFile: file,
                imageUrl: fileReader.result,
            });
        };

        if (file) {
            fileReader.readAsDataURL(file);
        }

    }

    handleTitle(e) {
        this.setState({ title: e.currentTarget.value });
    }

    handleDescription(e) {
        this.setState({
            description: e.currentTarget.value,
        });
    }

    handleNextStage() {
        window.scrollTo(0, 0);
        this.setState({
            nextStage: true,
            audioDuration: this._audio.duration
        });
    }

    handlePrevStage() {
        this.setState({ nextStage: false });
    }


    handleSubmit(e) {
        e.preventDefault();
        const formData = new FormData();
        formData.append('track[title]', this.state.title);
        formData.append('track[audio_track]', this.state.audioFile);
        formData.append('track[track_length]', this.state.audioDuration);
        formData.append('track[description]', this.state.description);

        if (this.state.imageFile) {
            formData.append('track[track_artwork]', this.state.imageFile);
        }

        this.props.createTrack(formData).then(() => (
            this.props.history.push(`/${this.props.currentUser.username}/${this.state.title}`)
        ));
    }

    stageOne() {

        return (
            <>
                {this.props.currentUserTracks.includes(this.state.title.toLowerCase()) ?
                    <div className="track-upload-title-warning">You already have an upload with this title - please select a unique title for this upload before moving forward.</div> : null
                }

                {["uploads", "favorites", "followers", "following", "settings"].includes(this.state.title.toLowerCase()) ?
                    <div className="track-upload-title-warning">This title is reserved - please select a different title for this upload before moving forward.</div> : null
                }

                {this.state.title.includes("?") ?
                    <div className="track-upload-title-warning">Upload titles cannot include a question mark - please remove the question mark from the title before moving forward.</div> : null
                }

                <div className="audio-file-input-container">
                    <input className="audio-file-input" type="file" accept=".mp3, .aac, .m4a, .mp4, .ogg" onChange={this.handleAudioFile} />
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
                            onChange={this.handleTitle}
                            placeholder="Choose a title for your upload"
                            maxLength="100" />
                        {this.state.title.length > 80 ?
                            <span className="title-length-warning">
                                <span style={{ color: this.state.title.length > 90 ? "#e2584e" : null }}>{`${100 - this.state.title.length} characters left`}</span>
                            </span> : null
                        }  
                    </span>
                </div>

                <div className={((this.state.audioFile && this.state.title) && !(this.props.currentUserTracks.includes(this.state.title.toLowerCase())) && !(["uploads", "favorites", "followers", "following", "settings"].includes(this.state.title.toLowerCase()) || this.state.title.includes("?"))) ? "track-upload-next-stage" : "track-upload-next-stage-disabled"}
                    onClick={((this.state.audioFile && this.state.title) && !(this.props.currentUserTracks.includes(this.state.title.toLowerCase())) && !(["uploads", "favorites", "followers", "following", "settings"].includes(this.state.title.toLowerCase()) || this.state.title.includes("?"))) ? () => this.handleNextStage() : null}>
                    Continue to Edit Information
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

                {this.props.currentUserTracks.includes(this.state.title.toLowerCase()) ?
                    <div className="track-upload-title-warning">You already have an upload with this title - please select a unique title for this upload before moving forward.</div> : null
                }

                {["uploads", "favorites", "followers", "following", "settings"].includes(this.state.title.toLowerCase()) ?
                    <div className="track-upload-title-warning">This title is reserved - please select a different title for this upload before moving forward.</div> : null
                }

                {this.state.title.includes("?") ?
                    <div className="track-upload-title-warning">Upload titles cannot include a question mark - please remove the question mark from the title before moving forward.</div> : null
                }

                <div className="track-upload-cf">

                    <section className="track-upload-image-container">
                        {this.state.imageUrl ?
                            <>
                                <div className="track-upload-image-preview">
                                    <img src={this.state.imageUrl} />
                                </div>
                                <div className="track-upload-change-image-container">

                                    <div className="track-upload-change-image-wrapper">
                                        <input type="file" accept=".jpeg, .jpg, .png, .gif" onChange={this.handleImageFile} />
                                    </div>
                                </div>
                            </>

                            :
                            <>
                                <div className="track-upload-cloud-icon">
                                    <FontAwesomeIcon icon={faCloudUploadAlt} />
                                </div>
                                <div className="track-upload-image-input-container">

                                        <div className="track-upload-image-input-wrapper">
                                            <input className="image-file-input" type="file" accept=".jpeg, .jpg, .png, .gif" onChange={this.handleImageFile} />
                                        </div>
                                </div>
                            </>
                        }
                        <section className="track-upload-stage-two-form-fields">
                            <div className="track-upload-stage-two-form-title-container">
                                <input type="text"
                                    className="track-title-input"
                                    value={this.state.title}
                                    onChange={this.handleTitle}
                                    placeholder="Title"
                                    maxLength="100" />
                                {this.state.title.length > 80 ?
                                    <span className="title-length-warning">
                                        <span style={{ color: this.state.title.length > 90 ? "#e2584e" : null }}>{`${100 - this.state.title.length} characters left`}</span>
                                    </span> : null
                                }
                            </div>

                            <div className="track-upload-stage-two-form-description-container">
                                <textarea
                                    className="track-description-input"
                                    value={this.state.description}
                                    onChange={this.handleDescription}
                                    placeholder="Description"
                                    style={{ height: `${this.state.description.length > 160 ? "148px" : (this.state.description.length > 0 ? "79px" : "")}` }}
                                    maxLength="1000"
                                />
                                {this.state.description.length > 900 ?
                                    <span className="description-length-warning">
                                        <span style={{ color: this.state.description.length > 970 ? "#e2584e" : null }}>{`${1000 - this.state.description.length} characters remaining`}</span>
                                    </span> : null
                                }
                            </div>
                            
                        </section>
                    </section>
                    <section className="track-upload-submission">
                        <div className="track-upload-save-container">
                            <Link to="/" className="track-upload-cancel">Cancel</Link>
                            <input className="track-upload-button" type="submit" value="Upload and Publish"
                                disabled={(((!this.state.audioUrl || !(this.state.title.length > 0)) || this.props.currentUserTracks.includes(this.state.title.toLowerCase())) || (["uploads", "favorites", "followers", "following", "settings"].includes(this.state.title.toLowerCase()) || this.state.title.includes("?")))}
                                onClick={() => this._loading.style.display = ""} />
                        </div>
                    </section>
                </div>

            </>
        )
    }

    render() {
        return (
            this.props.currentUsername ? (
                this.state.loaded ?
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

                            <form className="track-upload-form" onSubmit={this.handleSubmit} onKeyPress={(e) => {
                                if (e.target.className === "track-description-input") {
                                    return;
                                }
                                (e.key === 'Enter') && e.preventDefault(); 
                                }}>
                                {this.state.nextStage === true ? this.stageTwo() : this.stageOne()}
                            </form>

                        </div>
                        <audio ref={(a) => this._audio = a} src="" />
                        <div ref={(l) => this._loading = l} className="loading-spinner-background" style={{ display: "none" }}><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
            </section> : <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
            ) : <TrackUploadGuestContainer />
            
        );
    }
}

export default TrackUploadForm;