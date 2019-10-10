import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faChevronDown, faChevronUp } from '@fortawesome/free-solid-svg-icons';
import { Link, withRouter } from 'react-router-dom';

class HeaderDropdown extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            showDropdown: false,
        };

        this.showDropdown = this.showDropdown.bind(this);
        this.handleLogout = this.handleLogout.bind(this);
    }

    componentDidUpdate(prevProps) {
        if (this.props.path !== prevProps.path) {
            this.setState({
                showDropdown: false
            });
        }
    }

    showDropdown(e) {
        e.preventDefault();
        this.setState({ showDropdown: !this.state.showDropdown });
    }

    handleLogout() {
        if (this.props.currentTrack) {
            this.props.removeCurrentTrack();
        }
        this.props.logout();
    }

    render() {
        return (
            <div onClick={this.showDropdown}>
                {this.state.showDropdown ?
                (<>
                    <div className="header-profile-pic">
                        <img src={this.props.profilePic ? this.props.profilePic : window.defaultAvatar} />
                    </div>
                    <span className="header-name">{this.props.display_name}</span>
                    <button className="header-dropdown-icon">
                        <FontAwesomeIcon icon={faChevronUp} />
                    </button>
                    <ul className="header-dropdown-content">
                        <Link to={`/${this.props.username}`}><li>Your profile</li></Link>
                        <li>Settings</li>
                        <li onClick={() => this.props.openModal("login")}>Switch account</li>
                        <li onClick={() => this.handleLogout()}>Log out</li>
                    </ul>
                </>) 
                : 
                (<>
                    <div className="header-profile-pic">
                        <img src={this.props.profilePic ? this.props.profilePic : window.defaultAvatar} />
                    </div>
                    <span className="header-name">{this.props.display_name}</span>
                    <button className="header-dropdown-icon">
                            <FontAwesomeIcon icon={faChevronDown} />
                    </button>
                </>)}
            </div>
        );
    }
}

export default withRouter(HeaderDropdown);