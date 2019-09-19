import * as TrackApiUtil from "../util/track_api_util";

export const RECEIVE_ALL_TRACKS = "RECEIVE_ALL_TRACKS";
export const RECEIVE_TRACK = "RECEIVE_TRACK";
export const REMOVE_TRACK = "REMOVE_TRACK";

const receiveAllTracks = tracks => ({
    type: RECEIVE_ALL_TRACKS,
    tracks: tracks.tracks,
    users: tracks.users,
});

const receiveTrack = track => ({
    type: RECEIVE_TRACK,
    track: track.track,
    user: track.user,
});

const removeTrack = trackId => ({
    type: REMOVE_TRACK,
    trackId
});

export const fetchAllTracks = () => dispatch => (
    TrackApiUtil.fetchAllTracks()
        .then(tracks => dispatch(receiveAllTracks(tracks)))
);

export const fetchTrack = id => dispatch => (
    TrackApiUtil.fetchTrack(id)
        .then(track => dispatch(receiveTrack(track)))
);

export const createTrack = track => dispatch => (
    TrackApiUtil.createTrack(track)
        .then(track => dispatch(receiveTrack(track)))
);

export const updateTrack = track => dispatch => (
    TrackApiUtil.updateTrack(track)
        .then(track => dispatch(receiveTrack(track)))
);

export const updatePlaycount = track => dispatch => (
    TrackApiUtil.updatePlaycount(track)
        .then(track => dispatch(receiveTrack(track)))
);

export const deleteTrack = trackId => dispatch => (
    TrackApiUtil.deleteTrack(trackId)
        .then(trackId => dispatch(removeTrack(trackId)))
);