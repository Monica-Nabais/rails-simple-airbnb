class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
  end

  private

  def team_params
    params.require(:team).permit(:name, :oponent, :city, :competition, :price, :date)
  end
end
