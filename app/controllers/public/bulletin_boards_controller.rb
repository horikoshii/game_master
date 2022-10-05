class Public::BulletinBoardsController < ApplicationController

  def index
    @title = Title.find(params[:title_id])
    @bulletin_boards = @title.bulletin_boards.includes(:customer).order(created_at: :desc)
  end

  def new
    @title = Title.find(params[:title_id])
    @bulletin_board = BulletinBoard.new
  end

  def create
    @bulletin_board = current_customer.bulletin_boards.build(bulletin_board_params)
    @bulletin_board.title_id = params[:title_id]
    if @bulletin_board.save
      redirect_to title_bulletin_boards_path, success: t('defaults.message.created', item: BulletinBoard.model_name.human)
    else
      @title = Title.find(params[:title_id])
      @bulletin_board = BulletinBoard.new
      flash.now['danger'] = t('defaults.message.not_created', item: BulletinBoard.model_name.human)
      render :new
    end
  end

  def show
    @title = Title.find(params[:title_id])
    @bulletin_board = BulletinBoard.find(params[:id])
    @comment = Comment.new
    @comments = @bulletin_board.comments.includes(:customer).order(created_at: :desc).page(params[:page])
  end

  private

  def bulletin_board_params
    params.require(:bulletin_board).permit(:name, :body)
  end
end
