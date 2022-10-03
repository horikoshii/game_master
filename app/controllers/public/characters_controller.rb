class Public::CharactersController < ApplicationController


  def index
    @title = Title.find(params[:title_id])
    @characters = @title.characters.page(params[:character_page]).per(10)
  end

  def show
    @character = Character.find(params[:id])
    @title = Title.find(params[:title_id])
    @comments = @character.comments.page(params[:page])
    @comment = Comment.new
  end

  def create
    if @character.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  #def character_params
      #params.require(:character).permit(:body, :title, tag_ids: [])
  #end
end
