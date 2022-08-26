Rails.application.routes.draw do
  devise_scope :customer do
    # Redirests signing out users back to sign-in
    get "customers", to: "devise/sessions#new"
  end
  
  devise_for :customers, path: ''

  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  
  devise_for :users, path: 'admin/', controllers: { registrations: "registrations" }

  get 'contact', to: 'messages#new'
  get '/messages/confirmation', to: 'messages#confirmation'
  resources :messages

  get 'client-websites', to: 'pages#client_websites'
  get 'example-sites', to: 'pages#example_sites'
  get 'projects', to: 'pages#projects'
  get 'articles', to: 'pages#articles'
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
