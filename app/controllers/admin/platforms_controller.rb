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

  private

  def platform_params
    params.require(:platform).permit(:name)
  end

end
