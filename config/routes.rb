Rails.application.routes.draw do

  devise_for :users

  root 'pages#show', page: "index"

  resources :officers, path: "officers", only: %i(create index)
  resources :events, path: "events", only: %i(index new create show)
  resources :admin, only: [:index]

  Rails.application.routes.draw do
   get "pages/:page" => "pages#show"
  end
end
