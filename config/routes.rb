Rails.application.routes.draw do
  resources :recipes
  root 'recipes#index'
  get 'pages/about'

end
