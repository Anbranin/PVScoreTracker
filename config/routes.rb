Rails.application.routes.draw do
  root 'teams#index'

  resources :teams, :division_teams
end
