class Public::CheatsController < ApplicationController

  def index
    @title = Title.find(params[:id])
    @cheats = @title.cheats
  end

  def show
    @title = Title.find(params[:id])
    @cheat = Cheat.find(params[:id])
    @comments = @cheat.comments
    @comment = Comment.new
  end

  def show
    @title = Title.find(params[:id])
    @cheat = Cheat.find(params[:id])
    ally_id = @cheat.ally_id
    enemy_id = @cheat.enemy_id
    @ally = Character.find(ally_id)
    @enemy = Character.find(enemy_id)
    @comments = @cheat.comments
    @comment = Comment.new
  end

  def create
    if @cheat.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def cheat_params
    params.require(:cheat).permit(:cheat_content)
  end

end
