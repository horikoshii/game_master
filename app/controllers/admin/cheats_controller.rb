class Admin::CheatsController < ApplicationController

 def new
  @title = Title.find(params[:title_id])
     @cheat = Cheat.new(title_id: @title)
     @ally = @title.characters.ally
     @enemy = @title.characters.enemy
 end

 def create
    @cheat = Cheat.new(cheat_params)
    @cheat.title_id = params[:title_id]
    @cheat.save
    redirect_to admin_title_cheat_path(title_id: @cheat.title_id, id: @cheat.id)
 end

 def show
  @cheat = Cheat.find(params[:id])
  #@character = Character.find(params[:id])

  ally_id = @cheat.ally_id
  enemy_id = @cheat.enemy_id

  @ally = Character.find(ally_id)
  @enemy = Character.find(enemy_id)

 end

 def edit
  @title = Title.find(params[:title_id])
  @cheat = Cheat.find(params[:id])
  @ally = @title.characters.ally
  @enemy = @title.characters.enemy
 end

 def update
  @cheat = Cheat.find(params[:id])
  @cheat.update(cheat_params)
  redirect_to admin_title_cheat_path(@cheat.id)
 end

 private

  def cheat_params
    params.require(:cheat).permit(:name, :enemy_id, :ally_id, :cheat_detail, :evaluation)
  end

end
