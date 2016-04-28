Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  get 'about' => 'posts#about'
  get 'contact' => 'posts#contact'
  resources :contacts, only: [:new, :create]
  root 'posts#index'
  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
