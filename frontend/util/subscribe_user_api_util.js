export const createSubscribeUser = userId => (
    $.ajax({
        url: '/api/subscribe_users',
        method: 'POST',
        data: { id: userId },
    })
);

export const deleteSubscribeUser = id => (
    $.ajax({
        url: `/api/subscribe_users/${id}`,
        method: 'DELETE',
    })
);