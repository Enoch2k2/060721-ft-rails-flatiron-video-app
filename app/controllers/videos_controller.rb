class VideosController < ApplicationController
  before_action :set_video, only: [:show, :update, :destroy]

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

  def show
    if @video
      render json: @video, methods: [:hello], status: :ok
    else
      render json: { errors: "Your princess is in another castle" }, status: :bad_request
    end
  end

  def create 
    @video = Video.new(video_params)
    if @video.save
      render json: @video, methods: [:hello], status: :ok
    else
      # binding.pry
      render json: { errors: @video.errors.full_messages }, status: :unprocessable_entity
    end
  end
  
  def update
    if @video
      if @video.update(video_params)
        render json: @video, methods: [:hello], status: :ok
      else
        render json: { errors: @video.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { errors: "Your princess is in another castle" }, status: :bad_request
    end
  end

  def destroy
    if @video
      @video.destroy
      render json: @video, methods: [:hello], status: :ok
    else
      render json: { errors: "Your princess is in another castle" }, status: :bad_request
    end
  end

  private
    def set_video
      @video = Video.find_by_id(params[:id])
    end

    def video_params
      params.permit(
        :category,
        :title,
        :length,
        :genre,
        :rating
      )
    end
end
