import * as UserApiUtil from '../util/user_api_util';
export const RECEIVE_USER = 'RECEIVE_CURRENT_USER';

export const receiveUser = ({ user, tracks }) => {
    return ({
        type: RECEIVE_USER,
        user,
        tracks
    });
};

export const fetchUser = id => dispatch => (
    UserApiUtil.fetchUser(id)
        .then(user => dispatch(receiveUser(user)))
);