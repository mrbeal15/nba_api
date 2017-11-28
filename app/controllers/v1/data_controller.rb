class V1::DataController < ApplicationController
  def index
    @teams = Team.all
    
    render json: @teams
  end
end
