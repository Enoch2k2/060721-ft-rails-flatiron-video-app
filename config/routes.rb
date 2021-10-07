Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, except: [:create]
      # custom routes
      get "/videos/movies", to: "videos#movies"
      get "/videos/shows", to: "videos#shows"

      get '/get-current-user', to: 'users#get_current_user'
      post '/signup', to: 'users#create'
      post '/login', to: 'sessions#create'
      # resources :videos
      # resources :review, only: [:index]

      # ReSTful routes
      resources :videos do
        resources :reviews, only: [:create, :index]
      end
    end
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
