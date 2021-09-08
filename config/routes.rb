Rails.application.routes.draw do

  # custom routes
  get "/videos/movies", to: "videos#movies"
  get "/videos/shows", to: "videos#shows"

  # ReSTful routes
  resources :videos

  # restful routes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get "/videos", to: "videos#index"
  # get "/videos/:id", to: "videos#show"
  # post "/videos", to: "videos#create"
  # patch "/videos", to: "videos#update"
  # delete "/videos", to: "videos#destroy"

  # get /videos # index route - list
  # get /videos/:id # show route - more details
  # post /videos # create route - creating a new video
  # patch /videos/:id # update route - updates a video
  # delete /videos/:id # destroy route - destroys a video
end
