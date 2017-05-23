Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#show', page: "index"

  resources :officers, :events

  Rails.application.routes.draw do

  	get "pages/:page" => "pages#show"
  end

end
