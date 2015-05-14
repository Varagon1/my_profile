Rails.application.routes.draw do
  get '/profile/:id' => 'application#show'
  get '/new_profile' => 'application#new'
  get '/create_profile' => 'application#create'
end
