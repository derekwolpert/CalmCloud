
import { RECEIVE_CURRENT_USER } from '../actions/session_actions';
import { RECEIVE_ALL_TRACKS } from '../actions/track_actions'
import { merge } from 'lodash';

export default (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_CURRENT_USER:
            return merge({}, state, { [action.currentUser.id]: action.currentUser });
        case RECEIVE_ALL_TRACKS:
            return merge({}, state, action.users )
        default:
            return state;
    }
}