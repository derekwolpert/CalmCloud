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
                    <span className="header-name">{this.props.username}</span>
                    <button className="header-dropdown-icon">
                        <FontAwesomeIcon icon={faChevronUp} />
                    </button>
                    <ul className="header-dropdown-content">
                        <li>Your profile</li>
                        <li>Settings</li>
                        <li>Stats</li>
                        <li onClick={this.props.openModal}>Switch account</li>
                            <li onClick={() => this.props.logout().then(() => this.props.history.push('/'))}>Log out</li>
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

export default withRouter(HeaderDropdown);