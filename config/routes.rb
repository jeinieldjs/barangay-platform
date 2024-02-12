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
    get '/users/sign_out', to: 'devise/sessions#destroy'
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
    resources :posts, only: [:index, :new, :create, :show] do
      resources :comments, only: [:create, :destroy]
      resources :likes, only: [:create, :destroy]
      collection do
        get 'my_posts', to: 'posts#my_posts'
      end
    end
    resources :announcements, only: [:index, :show]
    
  end
end
