class DivisionTeamsController < ApplicationController
  def index
    @teams = DivisionTeam.all
  end

  def create
    # params should include the team and a division
    # team_id is team find by name
    # division_id is division find by type
    # year is params [ :year  ]
  end
end
