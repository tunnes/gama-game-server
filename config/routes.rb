Rails.application.routes.draw do
  # /game
  resources :game, only: %i[show create] do
    get :calculate, action: :calculate
  end

  # /question
  resources :question, only: %i[show]

  # /game-question
  resources :game_question, path: '/game-question', only: %i[update]
end
