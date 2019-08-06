import React from 'react';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';
import Modal from './modal/modal';
import HeaderContainer from './header/header_container';
import FooterAudioPlayer from './footer_audio_player/footer_audio_player';
import BodyContainer from './body_container'
import Splash from './splash/splash';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => (
    <>
        <header>
            <Modal />
            <HeaderContainer />
        </header>
        <div className="cf-body">
            {/* <Switch> */}
                <AuthRoute exact path="/" component={Splash} />
                <BodyContainer />
            {/* </Switch> */}
        </div>
        <footer>
            <FooterAudioPlayer />
        </footer>
    </>
);

export default App;