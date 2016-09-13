class V1::TeamsController < ApplicationController
  def index
    render json: @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    render json: @team
  end
end
