class Admin::CharactersController < ApplicationController

 def new
     @character = Character.new
 end

 def create
    @character = Character.new(character_params)
    @character.save
    redirect_to admin_characters_path(@character.id)
 end

 private

  def character_params
    params.require(:character).permit(:name, :skill, :skill_detail, :attribution_method, :IFF_method)
  end

end
