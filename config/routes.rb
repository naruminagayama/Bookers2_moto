Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :books do
  	collection do
  	get 'top'
  	get 'about'
    end
  end

  root 'books#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
