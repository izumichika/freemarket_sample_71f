Rails.application.routes.draw do
  devise_for :users
  # root to: 'devise/registrations#new'
  # resources :users, only: :new
  unauthenticated do
    as :user do
      root :to => 'devise/registrations#new'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

