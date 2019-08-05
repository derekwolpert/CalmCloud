import React from 'react';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';
import Modal from './modal/modal';
import HeaderContainer from './header/header_container';
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
        </Switch>
    </>

);

export default App;