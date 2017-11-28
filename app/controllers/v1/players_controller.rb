class V1::PlayersController < ApplicationController
  def index
    render json: @players = Player.all
  end

  def show
    player = Player.find(params[:id])
    contract = player.contract
    @response = {
      player: player,
      contract: contract
    }

    render json: @response
  end
end
