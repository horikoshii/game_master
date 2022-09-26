class Public::CharactersController < ApplicationController

  def show
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
end
