export const fetchUser = username => (
    $.ajax({
        method: "GET",
        url: `/api/users/${username}`
    })
);

export const updateUser = (user) => (
    $.ajax({
        url: `/api/users/${user.username}`,
        method: 'PATCH',
        data: track.formData,
        contentType: false,
        processData: false
    })
);