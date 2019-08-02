import React from 'react';

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