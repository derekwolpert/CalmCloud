import React from 'react';
import Modal from './modal/modal';
import ShareModal from './share_modal/share_modal';
import HeaderContainer from './header/header_container';
import FooterAudioPlayerContainer from './footer_audio_player/footer_audio_player_container';
import BodyContainer from './body_container';
import SplashContainer from './splash/splash_container';
import { AuthRoute } from '../util/route_util';

const App = () => (
    <>  
        <header>
            <Modal />
            <ShareModal />
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