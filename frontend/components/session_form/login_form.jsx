import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faTimes } from '@fortawesome/free-solid-svg-icons';
import { renderLoginErrors, renderPasswordErrors } from './render_session_errors';


class LoginForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            login: '',
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
        const demoUser = ({ login: "demo_user1", password: "password1" });
        this.props.processForm(demoUser).then(this.props.closeModal);
    }

    componentWillUnmount() {
        this.props.removeSessionErrors;
    }

    header() {
        return (
            <header>
                <ul className="session-form-tabs">
                    <li className="session-modal-active">
                        <a className="session-modal-link-active">Login</a>
                    </li>
                    <li className="session-modal-inactive">
                        <a onClick={this.props.otherForm} className="session-modal-link-inactive">Sign Up</a>
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
                New to CalmCloud? You can <a onClick={this.props.otherForm} className="session-modal-link-inactive">sign up here</a>.
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
                        <input className="session-submit" type="submit" value="Log In" disabled={!this.state.login || !this.state.password} />
                    </div>
                    {this.footer()}
                </form>
            </div>
        );
    }
}

export default LoginForm;