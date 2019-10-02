import React from 'react';
import { closeModal } from '../../actions/modal_actions';
import { connect } from 'react-redux';
import LoginFormContainer from '../session_form/login_form_container';
import SignupFormContainer from '../session_form/signup_form_container';


class Modal extends React.Component {
	constructor(props) {
		super(props);
		this.component = this.component.bind(this);
	}

	component() {
		if (this.props.modal === "login") {
			return <LoginFormContainer />;
		} else if (this.props.modal === "signup") {
			return <SignupFormContainer />;
		} else {
			return null;
		}
	}
	
	render() {
		return (
			this.props.modal ?
				<div className="modal-background" onClick={this.props.closeModal}>
					<div className="modal-child" onClick={e => e.stopPropagation()}>
						 {this.component()}
					</div>
				</div> : null
		);
	}
}

const mapStateToProps = state => {
	return {
		modal: state.ui.modal
	};
};

const mapDispatchToProps = dispatch => {
	return {
		closeModal: () => dispatch(closeModal()),
	};
};

export default connect(mapStateToProps, mapDispatchToProps)(Modal);
