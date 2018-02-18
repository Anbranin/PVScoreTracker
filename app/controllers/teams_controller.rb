class TeamsController < ApplicationController

  def index
    @teams = Team.all.order(:name)
  end

  def create
    team = Team.new(name: params[:name])
    if team.save
      flash[:success] = 'Team Created Successfully'
    else
      flash[:errors] = team.errors.full_messages
    end
    redirect_to action: :new and return
  end

end
