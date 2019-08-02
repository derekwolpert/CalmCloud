import React from 'react';

class Splash extends React.Component {

    constructor(props) {
        super(props);
    }
    
    render() {
        return (
            <>
                <img className="splash-background-image" src={window.background1URL} />
                <div className="splash-text">
                    <h1 className="splash-title">The online destination for relaxation audio</h1>
                    <h2 className="splash-subtitle">Explore a wide collection of sounds to aid with productivity, meditation and sleep.</h2>
                </div>
            </>
        );
    }
}

export default Splash;



