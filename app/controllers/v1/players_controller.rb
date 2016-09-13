class V1::PlayersController < ApplicationController
  def index
    render json: @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
    @contract = Contract.find_by(name: @player.name)
    player_object = {
      "player" => @player,
      "contract" => @contract
    }
    render json: player_object
  end
end
