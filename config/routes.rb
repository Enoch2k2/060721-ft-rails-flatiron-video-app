Rails.application.routes.draw do
  resources :users
  # custom routes
  get "/videos/movies", to: "videos#movies"
  get "/videos/shows", to: "videos#shows"

  # resources :videos
  # resources :review, only: [:index]

  # ReSTful routes
  resources :videos do
    resources :reviews, only: [:create, :index]
  end

  # get "/videos/1/reviews"
  # post "/videos/1/reviews" # create a review for video 1

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
