import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faCloudMoon, faChevronDown, faChevronUp } from '@fortawesome/free-solid-svg-icons';

const Greeting = ({ currentUser, logout, openModal }) => {

  const sessionLinks = () => (
    <nav className="header-guest-session-buttons">
      <button className="header-login" onClick={() => openModal('login')}>Log in</button>
        <span>or</span>
      <button className="header-signup" onClick={() => openModal('signup')}>Sign up</button>
    </nav>
  );

  const personalGreeting = () => (
    <div className="header-group">
      <span className="header-name">{currentUser.display_name}</span>
      <div className="header-dropdown">
        <FontAwesomeIcon className="header-dropdown-icon" icon={faChevronDown} />
        <ul className="header-dropdown-content">
          <li>Your profile</li>
          <li>Settings</li>
          <li>Stats</li>
          <li>Switch account</li>
          <li><a className="header-dropdown-link" onClick={logout}>Log out</a></li>
        </ul>
      </div>
    </div>
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
