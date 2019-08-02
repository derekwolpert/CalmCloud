import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faTimes } from '@fortawesome/free-solid-svg-icons';
import { removeSessionErrors } from '../../actions/session_actions'
import { renderLoginErrors, renderEmailErrors, renderUsernameErrors, renderPasswordErrors } from './render_session_errors';


class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            email: '',
            username: '',
            login: '',
            password: '',
        };
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }

    handleSubmit(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.processForm(user).then(this.props.closeModal);
    }

    componentWillUnmount() {
        dispatch(removeSessionErrors());
    }

    header() {
        if (this.props.formType === 'login') {
            return (
                <header>
                    <ul className="session-form-tabs">
                        <li className="session-modal-active">
                            <a className="session-modal-link-active">Login</a>
                        </li>
                        <li className="session-modal-inactive">
                            {this.props.otherForm}
                        </li>
                    </ul>
                    <a onClick={this.props.closeModal} className="session-modal-close-x">
                        <FontAwesomeIcon icon={faTimes} />
                    </a>
                </header>
            )
        }

        if (this.props.formType === 'signup') {
            return (
                <header>
                    <ul className="session-form-tabs">
                        <li className="session-modal-active">
                            {this.props.otherForm}
                        </li>
                        <li className="session-modal-inactive">
                            <a className="session-modal-link-active">Sign Up</a>
                        </li>  
                    </ul>
                    <a onClick={this.props.closeModal} className="session-modal-close-x">
                        <FontAwesomeIcon icon={faTimes} />
                    </a>
                </header>
            )
        }
    }

    footer() {
        if (this.props.formType === 'login') {
            return (
                <footer>
                    New to CalmCloud? You can {this.props.otherFormFooter}.
                </footer>
            );
        }

        if (this.props.formType === 'signup') {
            return (
                <footer>
                    Already using CalmCloud? {this.props.otherFormFooter}.
                </footer>
            );
        }
    }

    render() {

        if (this.props.formType === 'login') {
            return (
                <div className="session-form-container">
                    {this.header()}
                    <form onSubmit={this.handleSubmit} className="session-form-box">
                        <a className="session-demo-login">Log In as a Demo User</a>
                        <div className="session-form-divider">or</div>
                        <div className="session-form">
                            {renderLoginErrors(this.props.errors)}
                            <input type="text"
                                value={this.state.login}
                                placeholder={"Enter your email or username"}
                                onChange={this.update('login')}
                                className="session-input"
                            />
                            {renderPasswordErrors(this.props.errors)}
                            <input type="password"
                                value={this.state.password}
                                placeholder={"Enter your password"}
                                onChange={this.update('password')}
                                className="session-input"
                            />
                            <input className="session-submit" type="submit" value="Log In" />
                        </div>
                        {this.footer()}
                    </form>
                </div>
            );
        }
        
        if (this.props.formType === 'signup') {
            return (
                <div className="session-form-container">
                    {this.header()}
                    <form onSubmit={this.handleSubmit} className="session-form-box">
                        <a className="session-demo-login">Log In as a Demo User</a>
                        <div className="session-form-divider">or</div>
                        <div className="session-form">
                            {renderEmailErrors(this.props.errors)}
                            <input type="text"
                                value={this.state.email}
                                placeholder={"Enter email"}
                                onChange={this.update('email')}
                                className="session-input"
                            />
                            {renderUsernameErrors(this.props.errors)}
                            <input type="text"
                                value={this.state.username}
                                placeholder={"Enter username"}
                                onChange={this.update('username')}
                                className="session-input"
                            />
                            {renderPasswordErrors(this.props.errors)}
                            <input type="password"
                                value={this.state.password}
                                placeholder={"Enter your password"}
                                onChange={this.update('password')}
                                className="session-input"
                            />
                            <input className="session-submit" type="submit" value="Sign Up" />
                        </div>
                        {this.footer()}
                    </form>
                </div>
            );
        }
    }
}

export default SessionForm;