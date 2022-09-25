class FindersController < ApplicationController

  def finder
    @range = params[:range]

    if @range == "Character"
      @characters = Character.looks(params[:search], params[:word])
    else
      @cheats = Cheat.looks(params[:search], params[:word])
    end
  end
end
