import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faCloud } from '@fortawesome/free-solid-svg-icons';
import HeaderDropdown from './header_dropdown';
import { Link } from 'react-router-dom';

class Header extends React.Component {

	logo() {
		return (
			<Link to="/" className="header-icon-logo">
				<FontAwesomeIcon className="header-logo" icon={faCloud} />
				<h1 className="header-site-name">CalmCloud</h1>
			</Link>
		)
	}

	sessionLinks() {
		return (
			<nav className="header-guest-session-buttons">
				<button className="header-login" onClick={() => this.props.openModal('login')}>Log in</button>
				<span>or</span>
				<button className="header-signup" onClick={() => this.props.openModal('signup')}>Sign up</button>
			</nav>
		);
	}

	personalGreeting() {
		return (
			<div className="header-group">
				<div className="header-dropdown">
					<HeaderDropdown username={this.props.currentUser.display_name}/>
				</div>
			</div>
		);
	}

	render() {
		return (
			this.props.currentUser ?
				<header className="header-logged-in">
					<header className="header-container">
						{this.logo()}
						{this.personalGreeting()}
					</header>
				</header> :
				<header className="header-logged-out">
					<header className="header-container">
						{this.logo()}
						{this.sessionLinks()}
					</header>
				</header>
		);
	}
}

export default Header;