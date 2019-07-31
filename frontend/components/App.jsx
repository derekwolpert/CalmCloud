import React from 'react';
import { Provider } from 'react-redux';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';
import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';
import Modal from './modal/modal';
import GreetingContainer from './greeting/greeting_container';

const App = () => (
    <div>
        <h1>CalmCloud</h1>
        <Modal />
        <GreetingContainer />
    </div>
);

export default App;