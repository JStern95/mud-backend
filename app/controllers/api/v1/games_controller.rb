class Api::V1::GamesController < ApplicationController
  before_action :findGame, only: [:show, :destroy]

  def index
    @games = Game.all
    render json: @games
  end

  def show
    render json: @game
  end

  def create
    
  end

  def destroy
    @game.destroy
  end

  private

  def findGame
    @game = Game.all.find_by(id: params[:id])
  end

  def strongParams
    params.require(:game).permit(:name)
  end

end
