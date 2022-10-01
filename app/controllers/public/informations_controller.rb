class Public::InformationsController < ApplicationController

  def index
    @title = Title.find(params[:title_id])
    @informations = @title.informations
  end

  def show
    @title = Title.find(params[:title_id])
    @information = Information.find(params[:id])
  end
end
