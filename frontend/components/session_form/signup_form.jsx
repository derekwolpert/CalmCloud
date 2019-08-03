import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faTimes } from '@fortawesome/free-solid-svg-icons';
import { removeSessionErrors } from '../../actions/session_actions'
import { renderEmailErrors, renderUsernameErrors, renderPasswordErrors } from './render_session_errors';


class SignUpForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            email: '',
            username: '',
            password: '',
        };
        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleDemo = this.handleDemo.bind(this);
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

    handleDemo(e) {
        e.preventDefault();
        const demoUser = ({ email: "demo1@email.com", username: "demo_user_1", password: "password1" });
        this.props.processDemo(demoUser).then(this.props.closeModal);
    }

    componentWillUnmount() {
        dispatch(this.props.removeSessionErrors);
    }

    header() {
        return (
            <header>
                <ul className="session-form-tabs">
                    <li className="session-modal-active">
                        <a onClick={this.props.otherForm} className="session-modal-link-inactive">Login</a>
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

    footer() {
        return (
            <footer>
                Already using CalmCloud? <a onClick={this.props.otherForm} className="session-modal-link-inactive">Log in here</a>.
            </footer>
        );
    }

    render() {
        return (
            <div className="session-form-container">
                {this.header()}
                <form onSubmit={this.handleSubmit} className="session-form-box">
                    <div className="session-demos-container">
                        <a className="session-demo-login" onClick={this.handleDemo} >Log In as a Demo User</a>
                    </div>
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
                        <input className="session-submit" type="submit" value="Sign Up" disabled={!this.state.email || !this.state.username || !this.state.password} />
                    </div>
                    {this.footer()}
                </form>
            </div>
        );
    }
}

export default SignUpForm;