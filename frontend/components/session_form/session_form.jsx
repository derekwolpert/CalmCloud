import React from 'react';
import { Link } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faTimes } from '@fortawesome/free-solid-svg-icons';


class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            email: '',
            username: '',
            login: '',
            password: ''
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

    // renderErrors() {
    //     return (
    //         <ul>
    //             {this.props.errors.map((error, i) => (
    //                 <li key={`error-${i}`}>
    //                     {error}
    //                 </li>
    //             ))}
    //         </ul>
    //     );
    // }

    header() {
        if (this.props.formType === 'login') {
            return (
                <header>
                    <ul className="session-form-tabs">
                        <li className="session-modal-active">
                            <a>Login</a>
                        </li>
                        <li className="session-modal-inactive">
                            {this.props.otherForm}
                        </li>
                        <li onClick={this.props.closeModal} className="session-modal-close-x">
                            <FontAwesomeIcon icon={faTimes} />
                        </li>
                    </ul>
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
                            <a>Sign Up</a>
                        </li>
                        <li onClick={this.props.closeModal} className="session-modal-close-x">
                            <FontAwesomeIcon icon={faTimes} />
                        </li>
                    </ul>
                </header>
            )
        }
    }

    render() {

        if (this.props.formType === 'login') {

            return (
                <div className="session-form-container">
                    {this.header()}
                    <br />
                    <form onSubmit={this.handleSubmit} className="session-form-box">
                        
                        <div className="session-form">
                            <input type="text"
                                value={this.state.login}
                                placeholder={"Enter your email or username"}
                                onChange={this.update('login')}
                                className="session-input"
                            />
                            <br />
                            <input type="password"
                                value={this.state.password}
                                placeholder={"Enter your password"}
                                onChange={this.update('password')}
                                className="login-input"
                            />
                            <br />
                            <input className="session-submit" type="submit" value="Log In" />
                        </div>
                    </form>
                </div>
            );
        }
        


        if (this.props.formType === 'signup') {

            return (
                <div className="session-form-container">
                    {this.header()}
                    <br />
                    <form onSubmit={this.handleSubmit} className="session-form-box">

                        <div className="session-form">
                            <input type="text"
                                value={this.state.email}
                                placeholder={"Enter email"}
                                onChange={this.update('email')}
                                className="session-input"
                            />
                            <br />

                            <input type="text"
                                value={this.state.username}
                                placeholder={"Enter username"}
                                onChange={this.update('username')}
                                className="session-input"
                            />

                            <br />
                            <input type="password"
                                value={this.state.password}
                                placeholder={"Enter your password"}
                                onChange={this.update('password')}
                                className="session-input"
                            />
                            <br />
                            <input className="session-submit" type="submit" value="Sign Up" />
                        </div>
                    </form>
                </div>
            );
        }




    }
}

export default SessionForm;