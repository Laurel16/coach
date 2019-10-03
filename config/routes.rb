Rails.application.routes.draw do

  root 'pages#home'
  get '/dashboard', to: 'users#dashboard'
  get '/users/:id', to: 'users#show'

  post '/users/edit', to: 'users#update'

  resources :gigs do
    member do
      delete :delete_photo
      post :upload_photo
    end
  end

  devise_for :users,
              path: '',
              path_names: {sign_up: 'register', sign_in: 'login', edit: 'profile', sign_out: "logout"},
              controllers: {registrations: 'registrations'}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
