class V1::PlayersController < ApplicationController
  def index
    render json: @players = Player.all
  end
end
