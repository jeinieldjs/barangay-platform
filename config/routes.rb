Rails.application.routes.draw do
  namespace :api do
    get 'psgc/fetch_provinces', to: 'psgc#fetch_provinces'
    get 'psgc/fetch_cities_municipalities/:province_code', to: 'psgc#fetch_cities_municipalities'
    get 'psgc/fetch_barangays/:city_or_municipality_code', to: 'psgc#fetch_barangays'
  end

  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :complaints, only: [:new, :create, :index]
  get 'admin/complaints', to: 'complaints#index', as: 'admin_complaints'

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  namespace :admin do
    resources :dashboard, only: [:index] do
      post :create_admin_account, on: :collection
    end
    
    resources :residents do
      collection do
        get 'pending', to: 'residents#pending'
      end
    end 
    
    resources :announcements
  end

  namespace :resident do
    resources :dashboard, only: [:index]
    resources :posts, only: [:new, :create, :show] do
      resources :comments, only: [:create, :destroy]
      post :like, to: 'likes#create'
      delete :dislike, to: 'likes#destroy'
    end
  end
end
