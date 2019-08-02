import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faCloudMoon } from '@fortawesome/free-solid-svg-icons';

const Greeting = ({ currentUser, logout, openModal }) => {

  const sessionLinks = () => (
    <nav className="header-guest-session-buttons">
      <button className="header-login" onClick={() => openModal('login')}>Log in</button>
        <span>or</span>
      <button className="header-signup" onClick={() => openModal('signup')}>Sign up</button>
    </nav>
  );



  const personalGreeting = () => (
    <hgroup className="header-group">
      <h2 className="header-name">{currentUser.display_name}</h2>
      <button className="header-button" onClick={logout}>Log Out</button>
    </hgroup>
  );

  const logo = () => {
    return (
      <div className="header-icon-logo">
        <FontAwesomeIcon className="header-logo" icon={faCloudMoon}/>
        <h1 className="header-site-name">CalmCloud</h1>
      </div>
    )
  }

  return (
    currentUser ?
      <header className="greeting-header">
        {logo()}
        {personalGreeting(currentUser, logout)}
      </header> :
      <header className="greeting-header">
        {logo()}
        {sessionLinks()}
      </header>
  );
};

export default Greeting;
