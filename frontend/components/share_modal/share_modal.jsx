import React from 'react';
import { closeShareModal } from '../../actions/share_modal_actions';
import { withRouter } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faTimes } from '@fortawesome/free-solid-svg-icons';
import { connect } from 'react-redux';


class ShareModal extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            showCopiedMessage: false,
        };
        this._shareContent = React.createRef();
        this.copyShareContent = this.copyShareContent.bind(this);
    }

    componentDidUpdate(prevProps) {
        if ((this.props.location.pathname !== prevProps.location.pathname) && (this.props.shareModal)) {
            this.props.closeShareModal();
        }
    }

    copyShareContent() {
        this._shareContent.select();
        this._shareContent.setSelectionRange(0, 99999);
        document.execCommand("copy");
        this.setState({showCopiedMessage: true});
        setTimeout(() => this.setState({ showCopiedMessage: false }), 1000);

    }

    render() {
        return (
            this.props.shareModal ?
                <div className="modal-background" onClick={this.props.closeShareModal}>
                    <div className="modal-child" onClick={e => e.stopPropagation()}>
                        <section className="share-modal-container">
                            <header>
                                <ul className="session-form-tabs">
                                    <li className="session-modal-active">
                                        <a className="session-modal-link-active">Share</a>
                                    </li>
                                </ul>
                                <a onClick={this.props.closeShareModal} className="session-modal-close-x">
                                    <FontAwesomeIcon icon={faTimes} />
                                </a>
                            </header>
                            <div>
                                <section className="share-modal-content">
                                    <div>
                                        <span>
                                            <input ref={(s) => this._shareContent = s}
                                                onClick={() => this.copyShareContent()}
                                                className="share-modal-url"
                                                readOnly="readonly"
                                                value={this.props.shareModal}
                                            />

                                            { this.state.showCopiedMessage ?
                                                <div className="share-modal-copied">
                                                    <div className="share-modal-copied-text">Copied!</div>
                                                </div> : null
                                            }
                                                
                                        </span>

                                    </div>
                                </section>
                            </div>

                        </section>
                    </div>
                </div>
            : null
        );
    }
}

const mapStateToProps = state => {
    return {
        shareModal: state.ui.shareModal
    };
};

const mapDispatchToProps = dispatch => {
    return {
        closeShareModal: () => dispatch(closeShareModal()),
    };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(ShareModal));
