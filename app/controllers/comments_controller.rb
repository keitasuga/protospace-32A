class CommentsController < ApplicationController

  def create
    @comment = Comment.create(content: params[:text], prototype_id: params[:prototype_id], user_id: current_user.id)
    redirect_to prototype_path(@comment.prototype)
  end

  private
  def comment_params
    params.permit(:text, :prototype_id)
  end

end
