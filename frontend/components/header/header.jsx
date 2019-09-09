import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faCloud, faCloudUploadAlt } from '@fortawesome/free-solid-svg-icons';
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

	upload() {
		return (
			<Link to="/upload" className={this.props.location.pathname === "/upload" ? "header-upload-active" : "header-upload"}>
				<FontAwesomeIcon className="header-upload-icon" icon={faCloudUploadAlt} />
				<h1 className="header-upload-text">Upload</h1>
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
					<HeaderDropdown
					username={this.props.currentUser.display_name}
					profilePic={this.props.currentUser.userPictureUrl}
					logout={this.props.logout}
					openModal={this.props.openModal}
					/>
				</div>
			</div>
		);
	}

	render() {
		
		const headerClass = this.props.location.pathname === "/" && !this.props.currentUser ? "header-splash" : "header-main";
		return (
			this.props.currentUser ?
				<header className={headerClass}>
					<header className="header-container">
						{this.logo()}
						{this.upload()}
						{this.personalGreeting()}
					</header>
				</header> :
				<header className={headerClass}>
					<header className="header-container">
						{this.logo()}
						{this.upload()}
						{this.sessionLinks()}
					</header>
				</header>
		);
	}
}

export default Header;