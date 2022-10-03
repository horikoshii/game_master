class Public::InformationsController < ApplicationController

  def index
    @title = Title.find(params[:title_id])
    @informations = @title.informations.page(params[:information_page]).per(5)
  end

  def show
    @title = Title.find(params[:title_id])
    @information = Information.find(params[:id])
  end
end
