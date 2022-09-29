class Public::InformationsController < ApplicationController

  def index
    @informations = Information.all
  end

  def show
    @title = Title.find(params[:id])
    @information = Information.find(params[:id])
  end
end
