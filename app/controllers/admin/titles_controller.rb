class Admin::TitlesController < ApplicationController

  def index
    @platforms = Platform.all
    @titles = Title.all
  end

  def show
    @title = Title.find(params[:id])
  end

  def new
    @title = Title.new
  end

  def create
    @title = Title.new(title_params)
    @title.save
    redirect_to admin_titles_path(@title.id)
  end

  def edit
    @title = Title.find(params[:id])
  end

  def update
  end

  def serch
    @platforms = Platform.all
    @titles = Title.all
    if params[:platform_id]
      @platform = Platform.find(params[:platform_id])
      @titles = @platform.titles
    end
  end

  private

  def title_params
    params.require(:title).permit(:name, :platform_id)
  end

end