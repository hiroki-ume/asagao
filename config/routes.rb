Rails.application.routes.draw do
  get 'passwords/edit'
  get 'accounts/show'
  get 'accounts/edit'
  root "top#index"
  get 'about' => "top#about", as: "about"

  resources :members do
    get "search", on: :collection
  end

  resource :session, only: [:create, :destroy]
  resource :account, only: [:show, :edit, :update]
  resource :password, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
