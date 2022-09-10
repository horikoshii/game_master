class Admin::PlatformsController < ApplicationController

  def new
    @platform = Platform.new
  end

  def create
    @platform = Platform.new(platform_params)
    @platform.save
    redirect_to admin_path
  end

  private

  def platform_params
    params.require(:platform).permit(:name)
  end

end
