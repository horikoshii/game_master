class Admin::InformationsController < ApplicationController

  def new
    @title = Title.find(params[:title_id])
    @information = Information.new(title_id: @title)
  end

  def create
    @information = Information.new(information_params)
    @information.title_id = params[:title_id]
    if @information.save
      redirect_to admin_title_information_path(title_id: @information.title_id, id: @information.id)
    else
      redirect_back fallback_location: root_path
    end
  end

  def edit
    @title = Title.find(params[:title_id])
    @information = Information.find(params[:id])
  end

  def update
    @information = Information.find(params[:id])
    @information.update(information_params)
    redirect_to admin_title_information_path
  end

  def show
    @title = Title.find(params[:title_id])
    @information = Information.find(params[:id])
  end

  private

  def information_params
    params.require(:information).permit(:name, :type_method, :information_detail)
  end
end
