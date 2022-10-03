class Public::FavoritesController < ApplicationController

  def index
    @favorites = current_customer.favorites.all
  end

  def create
    @title = Title.find(params[:title_id])
    @cheat = Cheat.find(params[:cheat_id])
    @cheat_favorite = Favorite.new(customer_id: current_customer.id, cheat_id: params[:cheat_id])
    @cheat_favorite.save
    redirect_to title_cheat_path(title_id: @title.id, id: @cheat.id)
  end

  def destroy
    @title = Title.find(params[:title_id])
    @cheat = Cheat.find(params[:cheat_id])
    @cheat_favorite = Favorite.find_by(customer_id: current_customer.id, cheat_id: params[:cheat_id])
    @cheat_favorite.destroy
    redirect_to title_cheat_path(title_id: @title.id, cheat_id: @cheat.id)
  end

end
