class V1::TeamsController < ApplicationController
  def index
    render json: @teams = Team.all
  end
end
