Rails.application.routes.draw do
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  
  devise_for :users

  get '/messages/confirmation', to: 'messages#confirmation'
  resources :messages
  
  resources :pages

  root "home#index"

  
end
