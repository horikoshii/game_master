class Admin::InformationsController < ApplicationController

  def index
  end

  def new
    @information = Information.new
  end

  def create
    @information = Information.new(information_params)
    @information.save
    redirect_to admin_information_path(@information.id)
  end

  def edit
    @information = Information.find(params[:id])
  end

  def update
    @information = Information.find(params[:id])
    @information.update(information_params)
    redirect_to admin_information_path
  end

  def show
    @information = Information.find(params[:id])
  end

  private

  def information_params
    params.require(:information).permit(:name, :type_method, :information_detail)
  end
end
