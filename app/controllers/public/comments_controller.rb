class Public::CommentsController < ApplicationController

  def create
    #@comment = Comment.new(comment_params)
        #byebug
    comment = current_customer.comments.build(comment_params_2)

    if comment.save!
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment_content, :title_id, :cheat_id, :body).merge(bulletin_board_id: params[:bulletin_board_id])
  end

  def comment_params_2
    params.require(:comment).permit(:body).merge(bulletin_board_id: params[:bulletin_board_id])
  end
end
