class Public::FavoritesController < ApplicationController
  
  def create
    @cheat_favorite = Favorite.new(customer_id: current_customer.id, cheat_id: params[:cheat_id])
    @cheat_favorite.save
    redirect_to cheat_path(params[:cheat_id]) 
  end
  
  def create
    @cheat_favorite = Favorite.find_by(customer_id: current_customer.id, cheat_id: params[:cheat_id])
    @cheat_favorite.destroy
    redirect_to cheat_path(params[:cheat_id]) 
  end
end
