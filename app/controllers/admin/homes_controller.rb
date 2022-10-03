class Admin::HomesController < ApplicationController

  def top
    @comments = Comment.all
    # @platforms = Platform.all
    @titles = Title.all
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.update(is_valid: false)
    redirect_to admin_path
  end

  def serch
    @platforms = Platform.all
    @titles = Title.all
    if params[:platform_id]
      @platform = Platform.find(params[:platform_id])
      @titles = @platforms.titles
    end
  end

end
