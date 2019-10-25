export const fetchUser = username => (
    $.ajax({
        method: "GET",
        url: `/api/users/${username}`
    })
);

export const updateUser = (username, formData) => (
    $.ajax({
        url: `/api/users/${username}`,
        method: 'PATCH',
        data: formData,
        contentType: false,
        processData: false
    })
);