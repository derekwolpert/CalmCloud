
import { connect } from 'react-redux';
import React from 'react';
import { signup } from '../../actions/session_actions';
import { openModal, closeModal } from '../../actions/modal_actions';
import SessionForm from './session_form';

const mapStateToProps = ({ errors }) => {
    return {
        errors: errors.session,
        formType: 'signup',
    };
};

const mapDispatchToProps = dispatch => {
    return {
        processForm: (user) => dispatch(signup(user)),
        otherForm: (
            <a onClick={() => dispatch(openModal('login'))} className="session-modal-link-inactive">
                Login
            </a>
        ),
        otherFormFooter: (
            <a onClick={() => dispatch(openModal('login'))} className="session-modal-link-inactive">
                Log in here
            </a>
        ),
        closeModal: () => dispatch(closeModal()),
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);