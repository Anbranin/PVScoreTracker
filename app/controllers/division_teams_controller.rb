class DivisionTeamsController < ApplicationController

  def new
    @teams = Team.all
    @divisions = Division.all
    @division_teams = @game.division_teams
  end

  def create
    team = Team.find(params[:team])
    division = Division.find(params[:division])
    division_team = DivisionTeam.new(team: team, division: division, game: @game)
    if division_team.save
      flash[:success] = 'Team successfully added'
    else
      flash[:errors] = division_team.errors.full_messages
    end
    redirect_to action: :new and return
  end

end
