class Public::CommentsController < ApplicationController

  def create
    comment = Comment.new(comment_params)
    # comment = current_customer.comments.build(comment_params)
    #binding.pry
    comment.customer_id = current_customer.id
    comment.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def comment_params
    params.require(:comment).permit(:comment_content, :title_id, :cheat_id, :body).merge(bulletin_board_id: params[:bulletin_board_id],title_id: params[:title_id],cheat_id: params[:cheat_id],character_id: params[:character_id])
  end
end
