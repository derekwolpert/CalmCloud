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

export const createTrack = formData => (
    $.ajax({
        url: 'api/tracks',
        method: 'POST',
        data: formData,
        contentType: false,
        processData: false
    })
);

export const updateTrack = track => (
    $.ajax({
        url: `api/tracks/${track.id}`,
        method: 'PATCH',
        data: track.formData,
        contentType: false,
        processData: false
    })
);

export const updatePlaycount = track => (
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