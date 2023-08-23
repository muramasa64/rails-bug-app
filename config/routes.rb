Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resource :redirect, expect: [:new, :create, :destroy]

  # Test passes if uncomment the following line
  # get 'redirect' => 'redirects#show'
end
