import { OPEN_SHARE_MODAL, CLOSE_SHARE_MODAL } from '../actions/share_modal_actions';

export default (state = null, action) => {
    Object.freeze(state);
    switch (action.type) {
        case OPEN_SHARE_MODAL:
            return action.modal;
        case CLOSE_SHARE_MODAL:
            return null;
        default:
            return state;
    }
};