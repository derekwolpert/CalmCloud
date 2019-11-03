import * as CommentApiUtil from "../util/comment_api_util";

export const createComment = comment => dispatch => (
    CommentApiUtil.createComment(comment)
);

export const deleteComment = commentId => dispatch => (
    CommentApiUtil.deleteComment(commentId)
);