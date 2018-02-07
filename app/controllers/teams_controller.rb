class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def create
    # params should include a team name
  end
end
