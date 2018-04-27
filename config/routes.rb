Rails.application.routes.draw do
  get 'coffee/index'

  post 'coffee' => 'coffee#create'

  get 'coffee/show/:zipcode' => 'coffee#show'

  get 'coffee/checkout' => 'coffee#checkout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
