import React from 'react';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';
import Modal from './modal/modal';
import HeaderContainer from './header/header_container';
import FooterAudioPlayerContainer from './footer_audio_player/footer_audio_player_container';
import BodyContainer from './body_container';
import SplashContainer from './splash/splash_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => (
    <>
        <header>
            <Modal />
            <HeaderContainer />
        </header>
        <div className="cf-body">
            <AuthRoute exact path="/" component={SplashContainer} />
            <BodyContainer />
        </div>
        <footer>
            <FooterAudioPlayerContainer />
        </footer>
    </>
);

export default App;