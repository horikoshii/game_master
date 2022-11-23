class Admin::CharactersController < ApplicationController

 def index
  @title = Title.find(params[:title_id])
  @characters = Character.search(params[:search])
 end

 def new
  @title = Title.find(params[:title_id])
     @character = Character.new(title_id: @title)
 end

 def create
    @character = Character.new(character_params)
    @character.title_id = params[:title_id]
    if @character.save
     redirect_to admin_title_character_path(title_id: @character.title_id, id: @character.id)
    else
     redirect_back fallback_location: root_path
    end
 end

 def show
  @title = Title.find(params[:title_id])
  @character = Character.find(params[:id])
 end

 def edit
  @title = Title.find(params[:title_id])
  @character = Character.find(params[:id])
 end

 def update
  @character = Character.find(params[:id])
  @character.update(character_params)
  redirect_to admin_title_character_path
 end

 private

  def character_params
    params.require(:character).permit(:name, :skill, :skill_detail, :attribution_method, :iff_method)
  end

end
