class GamesController < ApplicationController
  def index
    @games =  Game.all
  end

  def tabs
    @game = Game.find(params[:id])
    session[:game_id] = @game.id
    @division_teams = @game.division_teams
    @divisions = Division.all
  end

  def girls_pool
    @tab = 'girls-pool'
  end

  def boys_pool
    @tab = 'boys-pool'
  end

  def girls_spirit

  end

  def boys_spirit

  end

  def girls_bracket

  end
  
  def boys_bracket

  end

end
