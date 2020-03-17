class TeamsController < ApplicationController

  def index
    @teams = Team.all.order(:name)
  end

  def new
    @team = Team.new
  end

  def create
    team = Team.new team_params
    if team.save
      flash[:success] = 'Team Created Successfully'
      redirect_to action: :new
    else
      flash[:errors] = team.errors.full_messages
    end
    redirect_to action: :new and return
  end

end
