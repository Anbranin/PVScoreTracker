class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def create
    team = Team.new(name: params[:name])
    if team.save
      flash[:success] = 'Team Created Successfully'
      redirect_to game_url(@game) and return
    else
      flash[:errors] = team.errors.full_messages
      redirect_to action: :new and return
    end
  end

  def new
    @divisions = Division.all
  end
end
