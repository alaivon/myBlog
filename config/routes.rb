Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  get 'about' => 'posts#about'
  get 'home' => 'posts#home'
  get 'myBMI' => 'actions#my_bmi'
  resources :contacts, only: [:new, :create]
  root 'posts#home'
  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
