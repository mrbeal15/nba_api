class V1::TeamsController < ApplicationController
  def index
    render json: @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    @players = @team.players
    @contracts = @team.contracts
    @response = {
      team: @team,
      players: @players,
      contracts: @contracts
    }

    render json: @response
  end
end
