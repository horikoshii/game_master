class Public::TitlesController < ApplicationController

  def show
    @title = Title.find(params[:id])
    @comments = @title.comments
    @comment = Comment.new
  end

  def create
    if @title.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end
end
