import { RECEIVE_ALL_TRACKS, RECEIVE_TRACK, REMOVE_TRACK } from "../actions/track_actions";
import merge from "lodash/merge";

const tracksReducer = (oldState = {}, action) => {
    Object.freeze(oldState);
    let newState = merge({}, oldState);
    switch (action.type) {
        case RECEIVE_ALL_TRACKS:
            return merge({}, action.tracks );
        case RECEIVE_TRACK:
            return merge({}, oldState, { [action.track.id]: action.track });
        case REMOVE_TRACK:
            delete newState[action.trackId];
            return newState;
        default:
            return oldState;
    }
};

export default tracksReducer;