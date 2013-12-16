Auth::Application.routes.draw do
	resources :users, only:[:new, :create]
	resource :session, only:[:new, :create, :destroy]
  # resource :session, only: %w(new create destroy)

  get '/restaurant', to: "restaurants#index"
  root "welcome#index"
end
