Rails.application.routes.draw do
  resources :spanish_words
  resources :english_words
  match 'result', to: 'translator#result', via: [:get, :post]
  root :to => "pages#home"
end
