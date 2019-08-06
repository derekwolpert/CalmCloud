import React from 'react';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';
import Modal from './modal/modal';
import HeaderContainer from './header/header_container';
import TrackShowContainer from './track_show/track_show_container';
import FooterAudioPlayer from './footer_audio_player/footer_audio_player';
import Splash from './splash/splash';
import { AuthRoute, ProtectedRoute } from '../util/route_util';


const App = () => (
    <>
        <header>
            <Modal />
            <HeaderContainer />
        </header> 
        <Switch>
            <AuthRoute exact path="/" component={Splash} />
            <Route path="/tracks/:trackId" component={TrackShowContainer} />
        </Switch>
        <footer>
            <FooterAudioPlayer />
        </footer>
    </>

);

export default App;