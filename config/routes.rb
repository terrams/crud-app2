Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'zombies#index'
  get '/zombies' => 'zombies#index'
  post '/zombies' => 'zombies#create'
  get '/zombies/:id' => 'zombies#show'
  get '/zombies/:id/edit' => 'zombies#edit'
  patch '/zombies/:id' => 'zombies#update'
  delete '/zombies/:id' => 'zombies#destroy'

end
