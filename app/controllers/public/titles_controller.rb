class Public::TitlesController < ApplicationController

  def show
    @title = Title.find(params[:id])
    @cheat = Cheat.find_by(params[:id])
    @cheats = Cheat.all
    @character = Character.find(params[:id])
    @characters = Character.all
    @information = Information.find_by(params[:id])
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

  private

  def title_params
    params.require(:title).permit(:title_content, :platform_id, :cheat_id, :information_id, :character_id)
  end
end
