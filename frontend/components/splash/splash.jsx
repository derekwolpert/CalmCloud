import React from 'react';
import { defaultCipherList } from 'constants';

class Splash extends React.Component {

    constructor(props) {
        super(props);
    }
    
    render() {
        return (<img className="splash-background-image" src={window.background1URL} />);
    }
}

export default Splash;