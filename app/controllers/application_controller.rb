class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_current_game

  def set_current_game
    if session[:game_id]
      @game = Game.find session[:game_id]
    elsif params[:game_id]
      @game = Game.find params[:game_id]
      session[:game_id] = params[:game_id]
    end
  end
end
