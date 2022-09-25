class Public::CheatsController < ApplicationController

  def show
    @cheat = Cheat.find(params[:id])
    @comments = @cheat.comments
    @comment = Comment.new
  end

  def create
    if @cheat.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def cheat_params
    params.require(:cheat).permit(:cheat_content)
  end

end
