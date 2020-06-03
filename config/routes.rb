Rails.application.routes.draw do
 
  get 'voitures' => 'voitures#index'
  get 'voitures/:id' => 'voitures#show'
  patch 'voitures/:id' => 'voitures#update'
  delete 'voitures/:id' => 'voitures#destroy'
  post 'voitures' => 'voitures#create'

  resources :voitures

  get 'clients' => 'clients#index'
  get 'clients/:id' => 'clients#show'
  patch 'clients/:id' => 'clients#update'
  delete 'clients/:id' => 'clients#destroy'
  post 'clients' => 'clients#create'

  resources :clients

  get 'marques' => 'marques#index'
  get 'marques/:id' => 'marques#show'
  patch 'marques/:id' => 'marques#update'
  delete 'marques/:id' => 'marques#destroy'
  post 'marques' => 'marques#create'

  resources :marques

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
