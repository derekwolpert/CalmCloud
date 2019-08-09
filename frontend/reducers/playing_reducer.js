import { CHANGE_TRACK, PAUSE_TRACK, REMOVE_CURRENT_TRACK } from '../actions/footer_player_actions';

export default (state = null, action) => {
    Object.freeze(state);
    switch (action.type) {
        case CHANGE_TRACK:
            return true;
        case PAUSE_TRACK:
            return false;
        case REMOVE_CURRENT_TRACK:
            return null;
        default:
            return state;
    }
};