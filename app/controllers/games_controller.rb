class GamesController < ApplicationController
  def index
    @games =  Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new game_params
    if @game.save
      flash[:success] = 'Game successfully created.'
      redirect_to games_url
    else
      flash[:errors] = @game.errors.full_messages
      render action: 'new'
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def current
    game = Game.find_by(year: Time.zone.now.year.to_s)
    if game
      redirect_to game_url(game)
    else
      redirect_to new_game_url
    end
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

  private

  def game_params
    params.require(:game).permit(:year)
  end

end
