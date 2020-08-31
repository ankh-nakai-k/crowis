Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  } 

  root "complaints#index"
  resources :complaints, only: [:index, :new, :create, :edit, :show]
  resources :users, only: [:new, :create, :destroy]
end
