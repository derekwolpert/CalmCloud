import { CURRENT_PERCENT } from '../actions/footer_player_actions';

export default (state = 0, action) => {
    Object.freeze(state);
    switch (action.type) {
        case CURRENT_PERCENT:
            return action.percent;
        default:
            return 0;
    }
};