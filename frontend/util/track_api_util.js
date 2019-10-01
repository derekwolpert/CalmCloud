export const fetchAllTracks = () => (
    $.ajax({
        method: "GET",
        url: "/api/tracks"
    })
);

export const fetchTrack = (username, title) => (
    $.ajax({
        method: "GET",
        url: `/api/users/${username}/tracks/${title}`
    })
);

export const createTrack = formData => (
    $.ajax({
        url: '/api/tracks',
        method: 'POST',
        data: formData,
        contentType: false,
        processData: false
    })
);

export const updateTrack = (username, track) => (
    $.ajax({
        url: `/api/users/${username}/tracks/${track.title}`,
        method: 'PATCH',
        data: track.formData,
        contentType: false,
        processData: false
    })
);

export const updatePlaycount = (username, track) => (
    $.ajax({
        url: `/api/users/${username}/tracks/${track.title}`,
        method: 'PATCH',
        data: { track }
    })
);

export const deleteTrack = id => (
    $.ajax({
        url: `/api/tracks/${id}`,
        method: 'DELETE'
    })
);