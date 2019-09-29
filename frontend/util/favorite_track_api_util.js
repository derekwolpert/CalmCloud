export const createFavoriteTrack = trackId => (
    $.ajax({
        url: '/api/favorite_tracks',
        method: 'POST',
        data: { id: trackId },
    })
);

export const deleteFavoriteTrack = id => (
    $.ajax({
        url: `/api/favorite_tracks/${id}`,
        method: 'DELETE',
    })
);