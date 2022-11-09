Rails.application.routes.draw do
    resources:threads
    resources:users, only: [:new, :create]
    get 'users/main'
    
    root 'users#new'
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
