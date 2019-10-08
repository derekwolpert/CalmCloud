import * as UserApiUtil from '../util/user_api_util';
export const RECEIVE_USER = 'RECEIVE_USER';

export const receiveUser = ({ user, users, tracks }) => {
    return ({
        type: RECEIVE_USER,
        users: users ? users : {},
        user,
        tracks
    });
};

export const fetchUser = username => dispatch => (
    UserApiUtil.fetchUser(username)
        .then(user => dispatch(receiveUser(user)))
);