class Admin::CheatsController < ApplicationController

 def new
     @cheat = Cheat.new
 end

 def create
    @cheat = Cheat.new(cheat_params)
    @cheat.save
    redirect_to admin_cheat_path
 end

 def show
  @cheat = Cheat.find(params[:id])
 end

 def edit
 end

 def update
 end

 private

  def cheat_params
    params.require(:cheat).permit(:name, :character_id, :cheat_detail, :recommendation_character, :evaluation)
  end

end
