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
    }

    showDropdown(e) {
        e.preventDefault();
        this.setState({ showDropdown: !this.state.showDropdown });
    }

    render() {
        return (
            <div onClick={this.showDropdown}>
                {this.state.showDropdown ?
                (<>
                    <div className="header-profile-pic">
                        <img src={this.props.profilePic ? this.props.profilePic : window.defaultAvatar} />
                    </div>
                    <span className="header-name">{this.props.username}</span>
                    <button className="header-dropdown-icon">
                        <FontAwesomeIcon icon={faChevronUp} />
                    </button>
                    <ul className="header-dropdown-content">
                        <li>Your profile</li>
                        <li>Settings</li>
                        <li onClick={() => this.props.openModal("login")}>Switch account</li>
                        <li onClick={() => this.props.logout().then(() => this.props.history.push('/'))}>Log out</li>
                    </ul>
                </>) 
                : 
                (<>
                    <div className="header-profile-pic">
                        <img src={this.props.profilePic ? this.props.profilePic : window.defaultAvatar} />
                    </div>
                    <span className="header-name">{this.props.username}</span>
                    <button className="header-dropdown-icon">
                            <FontAwesomeIcon icon={faChevronDown} />
                    </button>
                </>)}
            </div>
        );
    }
}

export default withRouter(HeaderDropdown);