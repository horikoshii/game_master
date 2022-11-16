class Admin::TitlesController < ApplicationController

  def index
    @platforms = Platform.all
    @titles = Title.all
  end

  def show
    @title = Title.find(params[:id])
    @informations = @title.informations.page(params[:information_page]).per(5).order(created_at: :desc)
    @characters = @title.characters.page(params[:character_page]).per(5).order(created_at: :desc)
    @cheats = @title.cheats.page(params[:cheat_page]).per(5).order(created_at: :desc)
    @comments = @title.comments.page(params[:page])
  end

  def new
    @title = Title.new
  end

  def create
    @title = Title.new(title_params)
    @title.save
    #binding.pry
    redirect_to admin_title_path(@title.id)
  end

  def edit
    @title = Title.find(params[:id])
  end

  def update
    @title = Title.find(params[:id])
    @title.update(title_params)
    redirect_to admin_title_path
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
    params.require(:title).permit(:name, :platform_id,:title_content)
  end

end
