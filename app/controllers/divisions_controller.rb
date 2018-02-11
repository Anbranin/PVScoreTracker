class DivisionsController < ApplicationController
  def create
    division = Division.new name: params[:name]
    if division.save
      redirect_to game_url(@game)
    end
  end
end
