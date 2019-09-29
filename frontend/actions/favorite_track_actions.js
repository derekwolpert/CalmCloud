import * as FavoriteTrackApiUtil from "../util/favorite_track_api_util";

export const createFavoriteTrack = trackId => dispatch => (
    FavoriteTrackApiUtil.createFavoriteTrack(trackId)
);

export const deleteFavoriteTrack = trackId => dispatch => (
    FavoriteTrackApiUtil.deleteFavoriteTrack(trackId)
);