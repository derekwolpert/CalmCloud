import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faHeadphonesAlt, faMicrophoneAlt, faUserFriends } from '@fortawesome/free-solid-svg-icons';
import { openModal } from "../../actions/modal_actions";

class Splash extends React.Component {

    constructor(props) {
        super(props);
    }
    
    render() {
        return (
            <>
                <img className="splash-background-image" src={window.background1URL} />
                <div className="splash-text">
                    <h1 className="splash-title">The online destination for relaxation audio</h1>                   <h2 className="splash-subtitle">Explore a wide collection of sounds to aid with productivity, meditation and sleep.</h2>
                </div>
                <div className="splash-buttons">
                    <button className="splash-login" onClick={() => dispatch(openModal('login'))}>Demo User Sign in</button>
                    <a className="splash-music-direct">Start Listening</a>
                </div>
                <div className="splash-signup">
                    <button className="splash-signup-link" onClick={() => dispatch(openModal('signup'))}>Sign up with email</button>                </div>
                <div className="splash-reasons">
                    <div className="splash-inner-container">

                        <div className="splash-sub-reason">
                            <div className="splash-reason-icon">
                                <FontAwesomeIcon icon={faHeadphonesAlt} />
                            </div>
                            <h3 className="splash-reason-title">Listen</h3>
                            <h4 className="splash-reason-subtitle">Get inspired by audio designed to keep you calm and focused.</h4>
                        </div>
                    
                        <div className="splash-sub-reason">
                            <div className="splash-reason-icon">
                                <FontAwesomeIcon icon={faMicrophoneAlt} />
                            </div>
                            <h3 className="splash-reason-title">Create</h3>
                            <h4 className="splash-reason-subtitle">Upload your audio creations to share with the world.</h4>
                        </div>

                        <div className="splash-sub-reason">
                            <div className="splash-reason-icon">
                                <FontAwesomeIcon icon={faUserFriends} />
                            </div>
                            <h3 className="splash-reason-title">Connect</h3>
                            <h4 className="splash-reason-subtitle">Interact with other like-minded indiviuals.</h4>
                        </div>
                    
                    </div>




                </div>
            </>
        );
    }
}

export default Splash;



