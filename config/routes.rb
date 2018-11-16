Rails.application.routes.draw do
  devise_for :users
  root 'top#index'

  resources :companies do

    resources :brands do
      resources :comments, only: [:index, :show, :new, :create]
       collection do
        get :search
        get :about
      end
    end
  end

end
