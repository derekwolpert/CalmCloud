export const CHANGE_TRACK = 'CHANGE_TRACK';
export const PAUSE_TRACK = 'PAUSE_TRACK'
export const REMOVE_TRACK = 'REMOVE_TRACK'

export const changeTrack = trackId => {
    return {
        type: CHANGE_TRACK,
        trackId,
    };  
};

export const pauseTrack = () => {
    return {
        type: PAUSE_TRACK,
    };
};

export const removeTrack = () => {
    return {
        type: REMOVE_TRACK,
    };
}