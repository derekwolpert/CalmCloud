import { CURRENT_PERCENT, CHANGE_TRACK, REMOVE_CURRENT_TRACK } from '../actions/footer_player_actions';

export default (state = 0, action) => {
    Object.freeze(state);
    switch (action.type) {
        case CURRENT_PERCENT:
            return Number.isNaN(action.percent) ? 0 : action.percent;
        case CHANGE_TRACK:
            return 0;
        case REMOVE_CURRENT_TRACK:
            return 0;
        default:
            return state;
    }
};