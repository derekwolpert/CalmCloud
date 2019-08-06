export const fetchAllTracks = () => (
    $.ajax({
        method: "GET",
        url: "/api/tracks"
    })
);

export const fetchTrack = id => (
    $.ajax({
        method: "GET",
        url: `/api/tracks/${id}`
    })
);

export const createTrack = track => (
    $.ajax({
        url: 'api/tracks',
        method: 'POST',
        data: { track }
    })
);

export const updateTrack = track => (
    $.ajax({
        url: `api/tracks/${track.id}`,
        method: 'PATCH',
        data: { track }
    })
);

export const deleteTrack = id => (
    $.ajax({
        url: `api/tracks/${id}`,
        method: 'DELETE'
    })
);