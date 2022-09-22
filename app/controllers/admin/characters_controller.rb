class Admin::CharactersController < ApplicationController

 def new
     @character = Character.new
 end

 def create
    @character = Character.new(character_params)
    @character.save
    redirect_to admin_character_path(@character.id)
 end

 def show
  @character = Character.find(params[:id])
 end

 def edit
  @character = Character.find(params[:id])
 end

 def update
  @character = Character.find(params[:id])
  @character.update(character_params)
  redirect_to admin_character_path(@character.id)
 end

 private

  def character_params
    params.require(:character).permit(:name, :skill, :skill_detail, :attribution_method, :iff_method)
  end

end
