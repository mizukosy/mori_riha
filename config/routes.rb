Rails.application.routes.draw do
  root to: 'therapists#index'
  resources :therapists
end
