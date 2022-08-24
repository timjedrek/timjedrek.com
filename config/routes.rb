Rails.application.routes.draw do
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  
  devise_for :users

  get '/messages/confirmation', to: 'messages#confirmation'
  resources :messages

  get 'client-websites', to: 'pages#client_websites'
  resources :pages
  #get "/pages", to: "pages#index"
  #get "/pages/new", to: "pages#new"
  #get "/pages/:id", to: "pages#show"
  #post "/pages", to: "pages#create"  # usually a submitted form
  #get "/pages/:id/edit", to: "pages#edit"
  #put "/pages/:id", to: "pages#update" # usually a submitted form
  #delete "/pages/:id", to: "pages#destroy"

  root "home#index"

  
end
