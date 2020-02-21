Rails.application.routes.draw do
  root 'games#index'

  resources :games do
    member do
      get :girls_pool
      get :boys_pool
      get :girls_spirit
      get :boys_spirit
      get :girls_bracket
      get :boys_bracket
    end
    collection do
      get :current
    end
    resources :division_teams
  end

  resources :teams
  resources :divisions
end
