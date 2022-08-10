import { RECEIVE_ALL_TRACKS, RECEIVE_TRACK, REMOVE_TRACK } from "../actions/track_actions";
import { merge } from 'lodash';
import { RECEIVE_CURRENT_USER } from "../actions/session_actions";
import { RECEIVE_USER } from '../actions/user_actions';

const tracksReducer = (oldState = {}, action) => {
    Object.freeze(oldState);
    let newState = merge({}, oldState);
    switch (action.type) {
        case RECEIVE_ALL_TRACKS:
            return merge({}, oldState, action.tracks );
        case RECEIVE_CURRENT_USER:
            return merge({}, oldState, action.tracks);
        case RECEIVE_USER:
            return merge({}, oldState, action.tracks);
        case RECEIVE_TRACK:
            merge(newState, action.tracks);
            return Object.assign(newState, { [action.track.id]: action.track } );
        case REMOVE_TRACK:
            delete newState[action.trackId];
            return newState;
        default:
            return oldState;
    }
};

export default tracksReducer;