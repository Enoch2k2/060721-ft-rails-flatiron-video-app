class VideosController < ApplicationController
  # after_action :render_videos, only: [:index, :movies]

  def index
    @videos = Video.all
    render json: @videos, methods: [:hello], status: :ok
  end
  
  def movies
    @videos = Video.where(category: "Movie")
    render json: @videos, methods: [:hello], status: :ok
  end

  def shows
    @videos = Video.where(category: "Show")
    render json: @videos, methods: [:hello], status: :ok
  end
  
  # private
  # def render_videos
  # end
end
