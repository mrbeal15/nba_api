class V1::DataController < ApplicationController
  def index
    teams = Team.all
    players = Player.all
    contracts = Contract.all

    @data_object = {
      "teams" => teams,
      "players" => players,
      "contracts" => contracts
    }
    render json: @data_object
  end
end
