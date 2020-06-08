Rails.application.routes.draw do

  get 'voitures' => 'voitures#index'
  get 'voitures/immatriculation/:immatriculation' => 'voitures#show_par_immatriculation'
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

  get 'voyages' => 'voyages#index'
  get 'voyages/:id' => 'voyages#show'
  patch 'voyages/:id' => 'voyages#update'
  delete 'voyages/:id' => 'voyages#destroy'
  post 'voyages' => 'voyages#create'

  resources :voyages

  get 'clients_voyages' => 'clients_voyages#index'
  get 'clients_voyages/:id' => 'clients_voyages#show'
  patch 'clients_voyages/:id' => 'clients_voyages#update'
  delete 'clients_voyages/:id' => 'clients_voyages#destroy'
  post 'clients/voyages' => 'clients_voyages#create'

  resources :clients_voyages


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
