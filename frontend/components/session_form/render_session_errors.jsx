import React from 'react';

export const renderLoginErrors = (errors) => {
    return (
        <ul className="session-modal-form-errors">
            {errors.map((err, idx) => {
                if (err.toLowerCase().includes("username") || err.toLowerCase().includes("email")) {
                    return (
                        <li className="session-modal-form-error" key={`error-${idx}`}>{err}</li>
                    )
                }
            })}
        </ul>
    );
};

export const renderEmailErrors = (errors) => {
    return (
        <ul className="session-modal-form-errors">
            {errors.map((err, idx) => {
                if (err.toLowerCase().includes("username")) {
                    return (
                        <li className="session-modal-form-error" key={`error-${idx}`}>{err}</li>
                    )
                }
            })}
        </ul>
    );
};

export const renderUsernameErrors = (errors) => {
    return (
        <ul className="session-modal-form-errors">
            {errors.map((err, idx) => {
                if (err.toLowerCase().includes("username")) {
                    return (
                        <li className="session-modal-form-error" key={`error-${idx}`}>{err}</li>
                    )
                }
            })}
        </ul>
    );
};

export const renderPasswordErrors = (errors) => {
    return (
        <ul className="session-modal-form-errors">
            {errors.map((err, idx) => {
                if (err.toLowerCase().includes("password")) {
                    return (
                        <li className="session-modal-form-error" key={`error-${idx}`}>{err}</li>
                    )
                }
            })}
        </ul>
    );
};