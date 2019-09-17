export const CHANGE_TRACK = 'CHANGE_TRACK';
export const PAUSE_TRACK = 'PAUSE_TRACK';
export const REMOVE_CURRENT_TRACK = 'REMOVE_CURRENT_TRACK';
export const CURRENT_PERCENT = 'CURRENT_PERCENT';

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

export const removeCurrentTrack = () => {
    return {
        type: REMOVE_TRACK,
    };
};

export const currentPercent = percent => {
    return {
        type: CURRENT_PERCENT,
        percent,
    };
};