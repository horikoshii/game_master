class Public::CharactersController < ApplicationController


  #def index
    #@character = Character.find(params[:id])
    #@characters = params[:tag_id].present? ? Tag.find(params[:tag_id]).characters : Character.all
  #end

  def show
    @title = Title.find(params[:id])
    @character = Character.find(params[:id])
    @comments = @character.comments
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
