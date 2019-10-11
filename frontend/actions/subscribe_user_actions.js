import * as SubscribeUserApiUtil from "../util/subscribe_user_api_util";

export const createSubscribeUser = userId => dispatch => (
    SubscribeUserApiUtil.createSubscribeUser(userId)
);

export const deleteSubscribeUser = userId => dispatch => (
    SubscribeUserApiUtil.deleteSubscribeUser(userId)
);