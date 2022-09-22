class Admin::CheatsController < ApplicationController

 def new
     @cheat = Cheat.new
     @ally = Character.where(iff_method: 1)
     @enemy = Character.where(iff_method: 0)
 end

 def create
    @cheat = Cheat.new(cheat_params)
    @cheat.save
    redirect_to admin_cheat_path(@cheat.id)
 end

 def show
  @cheat = Cheat.find(params[:id])
  @character = Character.find(params[:id])
  @ally = Character.find_by(params[:id])
  @enemy = Character.find_by(params[:id])
 end

 def edit
  @cheat = Cheat.find(params[:id])
 end

 def update
  @cheat = Cheat.find(params[:id])
  @cheat.update(cheat_params)
  redirect_to admin_cheat_path(@cheat.id)
 end

 private

  def cheat_params
    params.require(:cheat).permit(:name, :character_id, :cheat_detail, :evaluation)
  end

end
