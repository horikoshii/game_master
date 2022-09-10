class Admin::HomesController < ApplicationController

  def top
    @platforms = Platform.all
    @titles = Title.all
  end

  def serch
    @platforms = Platform.all
    @titles = Title.all
    if params[:platform_id]
      @platform = Platform.find(params[:platform_id])
      @titles = @platforms.titles
    end
  end

end
