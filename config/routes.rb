Rails.application.routes.draw do

  get '/' => 'pages#home'

  resources :users, only: [:create] do 
     resources :spins, only: [:new, :create, :show]
   end
end
