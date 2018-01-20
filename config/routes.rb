Rails.application.routes.draw do

  devise_for :users

  root 'pages#show', page: "index"

  resources :officers, path: "officers", only: [:index, :new, :create, :edit, :update]
  resources :events, path: "events", except: [:show]
  resources :admin, only: [:index]

  Rails.application.routes.draw do
   get "pages/:page" => "pages#show"
  end
end
