import React from 'react';
import { logout } from '../../actions/session_actions';
import { openModal } from '../../actions/modal_actions';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faChevronDown, faChevronUp } from '@fortawesome/free-solid-svg-icons';

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
                    <span className="header-name">{this.props.username}</span>
                    <button className="header-dropdown-icon">
                        <FontAwesomeIcon icon={faChevronUp} />
                    </button>
                    <ul className="header-dropdown-content">
                        <li>Your profile</li>
                        <li>Settings</li>
                        <li>Stats</li>
                        <li><a onClick={() => dispatch(openModal('login'))}>Switch account</a></li>
                        <li><a onClick={() => dispatch(logout())}>Log out</a></li>
                    </ul>
                </>) 
                : 
                (<>
                <span className="header-name">{this.props.username}</span>
                <button className="header-dropdown-icon">
                        <FontAwesomeIcon icon={faChevronDown} />
                </button></>)}
            </div>
        );
    }
}

export default HeaderDropdown;