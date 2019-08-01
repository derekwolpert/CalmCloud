import React from 'react';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';
import Modal from './modal/modal';
import GreetingContainer from './greeting/greeting_container';
import Splash from './splash/splash'

const App = () => (
    <div>
        <Modal />
        <GreetingContainer />
        <Splash />
    </div>
);

export default App;