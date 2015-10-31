Rails.application.routes.draw do
  resources :spanish_words
  resources :english_words
  root :to => "pages#home"
end
