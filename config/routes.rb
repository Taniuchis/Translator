Rails.application.routes.draw do
  resources :words
  root :to => "pages#home"
end
