Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/gifs', to: "fetches#test_gifs"
  post '/get_gifs', to: "fetches#get_gifs"

end
