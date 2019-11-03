class Api::CommentsController < ApplicationController

    def create
        @comment = Comment.new(comment_params)
        @comment.user_id = current_user.id
        errs = ["placeholder error"]
        if @comment.save
            render json: comment_params[:track_id]
        else
            render json: @comment.errors.full_messages, status: 401
        end
    end

    def destroy
        @comment = current_user.comments.find(params[:id])
        if @comment
            @comment.destroy
            render json: params[:id]
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:body, :track_id, :parent_comment_id)
    end
end