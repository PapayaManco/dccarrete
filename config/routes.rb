Rails.application.routes.draw do
  get 'tickets/show'
  get 'tickets/edit'
  get 'interes/edit'

  namespace :admin do
    resources :users
    resources :carretes
    resources :servicios
    resources :comunas
    resources :reviews

    root to: 'users#index'
  end

  # CREATE
  get 'carretes/new', to: 'carretes#new', as: 'carretes_new' #--> to: "controlador#accion"
  post 'carretes', to: 'carretes#create'

  get 'servicios/new', to: 'servicios#new', as: 'servicios_new'
  post 'servicios', to: 'servicios#create'

  get 'tickets/new', to: 'tickets#new'
  post 'tickets', to: 'tickets#create'

  get 'reviews/new', to: 'reviews#new'
  post 'reviews', to: 'reviews#create'

  get 'interes/new', to: 'interes#new'
  post 'interes', to: 'interes#create'

  # READ
  get 'carretes/index', to: 'carretes#index', as: 'carretes_index'
  get 'carretes/buscar', to: 'carretes#buscar', as: 'carretes_buscar'
  get 'carretes/:id/show', to: 'carretes#show', as: 'carrete'
  get 'carretes/mostrar', to: 'carretes#mostrar', as: 'carretes_mostrar'
  get 'carretes/interesados', to: 'carretes#interesados', as: 'carretes_interesados'

  get 'servicios/index', to: 'servicios#index', as: 'servicios_index'
  get 'servicios/buscar', to: 'servicios#buscar', as: 'servicios_buscar'
  get 'servicios/:id/show', to: 'servicios#show', as: 'servicio'
  get 'servicios/mostrar', to: 'servicios#mostrar', as: 'servicios_mostrar'

  get 'interes/index', to: 'interes#index', as: 'interes_index'
  get 'interes/:id', to: 'interes#show', as: 'intere'

  get 'tickets/mostrar', to: 'tickets#mostrar', as: 'tickets_mostrar'
  get 'tickets/index', to: 'tickets#index', as: 'tickets_index'
  get 'tickets/:id', to: 'tickets#show', as: 'ticket'

  get 'reviews/mostrar', to: 'reviews#mostrar', as: 'reviews_mostrar'
  get 'reviews/index', to: 'reviews#index', as: 'reviews_index'
  get 'reviews/:id', to: 'reviews#show', as: 'review'

  # UPDATE
  get 'carretes/:id/edit', to: 'carretes#edit', as: 'carrete_edit'
  patch 'carretes/:id', to: 'carretes#update', as: 'carrete_update'

  get 'servicios/:id/edit', to: 'servicios#edit', as: 'servicio_edit'
  patch 'servicios/:id', to: 'servicios#update', as: 'servicio_update'

  # DELETE
  delete 'carretes/:id', to: 'carretes#delete'
  delete 'servicios/:id', to: 'servicios#delete'
  delete 'interes/:id', to: 'interes#delete'

  devise_for :users, controllers: {
    sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords'
  }
  # root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'static_pages/home'
  root to: 'static_pages#home'

  get 'static_pages/perfil', to: 'static_pages#perfil', as: 'static_pages_perfil'

  resources :carretes do
    collection do
      get 'search'
    end
  end
  resources :reviews, except: [:index]
end
