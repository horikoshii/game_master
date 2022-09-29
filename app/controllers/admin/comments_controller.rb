class Admin::CommentsController < ApplicationController


  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    
    if @comment.destroy
      redirect_to admin_path, notice: '管理者によって削除されました'
      
    else
      render "admin/homes/top"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment_content, :title_id)
  end
end
