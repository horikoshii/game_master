class Admin::PlatformsController < ApplicationController

  def new
    @platform = Platform.new
  end

  def create
    @platform = Platform.new(platform_params)
    if @platform.save
      redirect_to admin_path
    else
      render :new
    end
  end

  def edit
    @platform = Platform.find(params[:id])
  end

  def update
    @platform = Platform.find(params[:id])
    if @platform.update
      redirect_to admin_path
    else
      render :edit
    end
  end

  def destroy
    @platform = Platform.find(params[:id])
    @platform.destroy
    redirect_to admin_path
  end

  private

  def platform_params
    params.require(:platform).permit(:name)
  end

end
