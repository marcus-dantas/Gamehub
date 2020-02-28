class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    game = Game.new(game_params)
    game.user = current_user
    if game.save
      flash[:notice] = "Your game posted successfully "
      redirect_to game_path(game)
    else
      render :new
    end
  end

  def edit
    @game = Game.find(params[:id])
  end
  def update
    @game = Game.find(params[:id])
    @game.update(params[:game])
    redirect_to game_path(@game)
  end
  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path
  end
  private

  def game_params
    params.require(:game).permit(:title, :description, :daily_price, :address, :category, :photo)
  end
end
