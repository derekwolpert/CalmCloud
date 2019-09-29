import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faCloud, faCloudUploadAlt } from '@fortawesome/free-solid-svg-icons';
import HeaderDropdown from './header_dropdown';
import { Link } from 'react-router-dom';

class Header extends React.Component {


	constructor(props) {
		super(props);
		this.state = {
			large: null,
		};
		this.handleHeaderSize = this.handleHeaderSize.bind(this);
	}

	componentDidMount() {
		this.setState({
			large: window.innerWidth >= 1320,
		});
		window.addEventListener('resize', this.handleHeaderSize);
	}

	componentWillUnmount() {
		window.removeEventListener('resize', this.handleHeaderSize);
	}

	handleHeaderSize() {
		if ((window.innerWidth < 1320) && this.state.large) {
			this.setState({
				large: false,
			});
		} else if ((window.innerWidth >= 1320) && !this.state.large) {
			this.setState({
				large: true,
			});
		}
	}

	logo() {
		return (
			<div className="header-icon-logo">
				<Link to="/">
					<FontAwesomeIcon className="header-logo" icon={faCloud} />
					<h1 className="header-site-name">CalmCloud</h1>
				</Link>
			</div>
			
		)
	}

	upload() {
		return (
			<div className={this.props.location.pathname === "/upload" ? "header-upload-active" : "header-upload"}>
				<Link to="/upload">
					<FontAwesomeIcon className="header-upload-icon" icon={faCloudUploadAlt} />
					<h1 className="header-upload-text">Upload</h1>
				</Link>
			</div>
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
					currentTrack={this.props.currentTrack}
					logout={this.props.logout}
					openModal={this.props.openModal}
					removeCurrentTrack={this.props.removeCurrentTrack}
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
					<header className="header-container" style={{width: this.state.large ? "1320px" : "1100px"}}>
						{this.logo()}
						{this.upload()}
						{this.personalGreeting()}
					</header>
				</header> :
				<header className={headerClass}>
					<header className="header-container" style={{ width: this.state.large ? "1320px" : "1100px" }}>
						{this.logo()}
						{this.upload()}
						{this.sessionLinks()}
					</header>
				</header>
		);
	}
}

export default Header;