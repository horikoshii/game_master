class Public::TitlesController < ApplicationController
  
  def show
    @title = Title.find(params[:id])
    @cheats = @title.cheats
    @characters = @title.characters
    @informations = @title.informations
    @comments = @title.comments
    @comment = Comment.new
  end

  def serch
    @platforms = Platform.all
    @titles = Title.all
    if params[:platform_id]
      @platform = Platform.find(params[:platform_id])
      @titles = @platform.titles
    end
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
