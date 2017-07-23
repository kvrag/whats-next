Rails.application.routes.draw do

  get '/' => 'users#new'

  resources :users, only: [:create] do 
     resources :spins, only: [:new, :create, :show]
   end
end
