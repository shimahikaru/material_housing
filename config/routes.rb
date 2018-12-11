Rails.application.routes.draw do

  devise_for :users
  root 'top#index'
  get 'top/about', to: 'top#about'
  get 'top/search', to: 'top#search'

  get 'inquiries', to: 'inquiries#index'
  post 'inquiries/confirm', to: 'inquiries#confirm'
  post 'inquiries/complete', to: 'inquiries#complete'

  resources :questions do
    resources :answers
  end

  resources :editors do
    collection do
    get :search
    get :about
    end
  end

  resources :companies

  resources :brands do
    collection do
    get :search
    get :about
    end
  end

  resources :comments, only: [:index, :show, :new, :create] do
        collection do
    get :search
    get :about
    end
  end

end
