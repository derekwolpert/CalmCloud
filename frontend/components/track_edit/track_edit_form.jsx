import React from 'react';
import { Link } from 'react-router-dom';

class TrackEditForm extends React.Component {


    static getDerivedStateFromProps(props, state) {
        if (props.track && !state.stateIsSet) {
            return {
                title: props.track.title,
                trackArtworkUrl: props.track.trackArtworkUrl === undefined ? window.defaultArtwork : props.track.trackArtworkUrl,
                description: props.track.description !== undefined ? props.track.description : "",
                stateIsSet: true,
                descriptionIsSet: props.track.description !== undefined
            };
        }
        return null;
    }

    constructor(props) {
        super(props);
        this.state = {
            title: "",
            description: "",
            trackArtworkUrl: window.defaultArtwork,
            imageFile: null,
            imageUrl: null,
            stateIsSet: false,
            descriptionIsSet: false,
            deleteConfirmation: false,
            submitting: false
        };
        this._loading = React.createRef();
        this.handleEditButton = this.handleEditButton.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    componentDidMount() {
        window.scrollTo(0, 0);
        if (!this.props.track) {
            this.props.fetchTrack(this.props.match.params.username, this.props.match.params.title);
        } else if (this.props.currentUser.id !== this.props.track.user_id) {
            this.props.history.push(`/${this.props.currentUser.username}/${this.props.track.title}`);
        } else if (this.props.track.description === undefined) {
            this.props.fetchTrack(this.props.match.params.username, this.props.match.params.title);
        }
        document.title = `Editing ${this.props.match.params.title} | CalmCloud`;
    }

    componentDidUpdate(prevProps) {

        if (this.props.currentUser === undefined && prevProps.currentUser) {
            this.props.history.push("/");
        }
        if (!this.props.track && !this.state.submitting) {
            this.props.fetchTrack(this.props.match.params.username, this.props.match.params.title);
        } else if (this.props.currentUser.username !== this.props.match.params.username) {
            this.props.history.push(`/${this.props.match.params.username}/${this.props.track.title}`);
        } else if (this.props.track) {
            if (this.props.track.description === undefined) {
                this.props.fetchTrack(this.props.match.params.username, this.props.match.params.title);
            }
        } else if (!this.state.descriptionIsSet) {
            this.setState({
                description: this.props.track.description,
                descriptionIsSet: true,
            });
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
        this.setState({
            title: e.currentTarget.value 
        });
    }

    handleDescription(e) {
        this.setState({
            description: e.currentTarget.value,
        });
    }

    handleDelete() {
        this.setState({
            submitting: true,
        });
        if (this.props.track.id === this.props.currentTrack) {
            this.props.removeCurrentTrack();
        }
        this.props.deleteTrack(this.props.track.id)
            .then(() => this.props.fetchCurrentUser(this.props.currentUser.username))
            .then(() => (this.props.history.push("/"))); 
    }

    handleEditButton() {
        if (this.props.track.title !== this.state.title) {
            return false;
        }
        if (this.props.track.description !== this.state.description) {
            return false;
        }
        if (this.state.imageFile) {
            return false;
        }
        return true;
    }

    handleSubmit(e) {
        e.preventDefault();
        const formData = new FormData();

        if (this.props.track.title !== this.state.title) {
            formData.append('track[title]', this.state.title);
        }

        if (this.props.track.description !== this.state.description) {
            formData.append('track[description]', this.state.description);
        }

        if (this.state.imageFile) {
            formData.append('track[track_artwork]', this.state.imageFile);
        }

        this.setState({
            submitting: true,
        });

        this.props.updateTrack(this.props.currentUser.username, this.props.track.title, formData).then(() => {
            this.props.history.push(`/${this.props.currentUser.username}/${this.state.title}`);
        });
    }

    render() {
        return (
            this.state.descriptionIsSet && this.props.track ?
                <section className="track-upload-container">
                    <h1>{`Editing ${this.props.track.title}`}
                        <Link className="track-edit-header-back" to={`/${this.props.currentUser.username}/${this.props.track.title}`}>Back</Link>
                    </h1>
                    <div className="track-upload-inner-container">

                        <form className="track-upload-form" onSubmit={this.handleSubmit} onKeyPress={(e) => {
                            if (e.target.className === "track-description-input") {
                                return;
                            }
                            (e.key === 'Enter') && e.preventDefault();
                        }}>

                            {this.props.currentUserTracks.includes(this.state.title.toLowerCase()) ?
                                <div className="track-upload-title-warning">You already have an upload with this title - please select a unique title for this upload before moving forward.</div> : null
                            }

                            <div className="track-upload-cf">

                                <section className="track-upload-image-container">
                                    <div className="track-upload-image-preview">
                                        <img src={this.state.imageUrl ? this.state.imageUrl : this.state.trackArtworkUrl} />
                                    </div>
                                    <div className="track-upload-change-image-container">
                                        <div className="track-edit-change-image-wrapper">
                                            <input type="file" accept=".jpeg, .jpg, .png, .gif" onChange={(e) => this.handleImageFile(e)} />
                                        </div>
                                    </div>

                                    <section className="track-upload-stage-two-form-fields">
                                        <div className="track-upload-stage-two-form-title-container">
                                            <input type="text"
                                                className="track-title-input"
                                                value={`${this.state.title}`}
                                                onChange={(e) => this.handleTitle(e)}
                                                placeholder="Title"
                                                maxLength="100" />
                                        </div>

                                        <div className="track-upload-stage-two-form-description-container">
                                            <textarea
                                                className="track-description-input"
                                                value={`${this.state.description}`}
                                                onChange={(e) => this.handleDescription(e)}
                                                placeholder="Description"
                                                style={{ height: `${this.state.description.length > 0 ? "79px" : ""}` }}
                                                maxLength="1000"
                                            />
                                        </div>
                                    </section>
                                </section>
                                <section className="track-upload-submission">
                                    <div className="track-edit-delete-container">
                                        { this.state.deleteConfirmation ?
                                            <div className="track-edit-delete-comformation">
                                                <div className="track-upload-button" onClick={() => this.setState({ deleteConfirmation: false })}>
                                                    Cancel
                                                </div>
                                                <div className="track-upload-button" onClick={() => this.handleDelete()}>
                                                    Confirm Deletion
                                                </div>
                                            </div>
                                            :
                                            <div className="track-edit-delete-button" onClick={() => this.setState({ deleteConfirmation: true })}>
                                                Delete this upload
                                            </div>
                                        }
                                    </div>
                                    <div className="track-upload-save-container">
                                        <Link to="/" className="track-upload-cancel">Cancel</Link>
                                        <input className="track-upload-button" type="submit" value="Save"
                                            disabled={this.handleEditButton() || this.props.currentUserTracks.includes(this.state.title.toLowerCase())}
                                            onClick={() => this._loading.style.display = ""} />
                                    </div>
                                </section>
                            </div>
                        </form>

                    </div>
                    <div ref={(l) => this._loading = l} className="loading-spinner-background" style={{ display: "none" }}><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
                </section>
                :
                <div className="loading-spinner-background"><div className="loading-spinner"><div></div><div></div><div></div><div></div></div></div>
        )
    }
}

export default TrackEditForm;