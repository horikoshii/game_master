class Public::InformationsController < ApplicationController

  def show
    @title = Title.find(params[:id])
    @information = Information.find(params[:id])
  end
end
