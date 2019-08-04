import React from 'react';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';
import Modal from './modal/modal';
import HeaderContainer from './header/header_container';
import Splash from './splash/splash';
import HeaderDropdown from './header/header_dropdown'

const App = () => (
    <div>
        <Modal />
        <HeaderContainer />
        <Splash />
    </div>
);

export default App;