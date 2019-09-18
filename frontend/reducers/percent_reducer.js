import { CURRENT_PERCENT, CHANGE_TRACK } from '../actions/footer_player_actions';

export default (state = 0, action) => {
    Object.freeze(state);
    switch (action.type) {
        case CURRENT_PERCENT:
            return action.percent;
        case CHANGE_TRACK:
            return 0;
        default:
            return state;
    }
};