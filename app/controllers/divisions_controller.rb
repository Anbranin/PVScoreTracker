class DivisionsController < ApplicationController
  def create
    division = Division.new name: params[:name]
    if division.save
      redirect_to :new
    end
  end

  def new
    @division = Division.new
  end
end
