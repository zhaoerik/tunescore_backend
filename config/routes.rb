Rails.application.routes.draw do
  resources :lyric_answers
  resources :lyric_questions
  resources :games
  resources :high_scores
  resources :users
  resources :reviews
  resources :albums
  resources :tracks
  resources :artists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
