Rails.application.routes.draw do
  resources :contacts do 
    resource :kind, only: [:show]
    resource :kind, only: [:show], path: 'relationships/kind'
  end
end
