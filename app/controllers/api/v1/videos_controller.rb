class Api::V1::VideosController < ApplicationController
  before_action :set_video, only: [:show, :update, :destroy]

  def index
    if params[:q]
      # return json that is searched
      @videos = Video.where("lower(title) LIKE ?", "%#{params[:q].downcase}%")
    else
      @videos = Video.all
    end
    render json: @videos, :include => [:reviews => [:user]]
  end
  
  def movies
    @videos = Video.where(:category => "Movie")
    render json: @videos
  end

  def shows
    @videos = Video.where(category: "Show")
    render json: @videos
  end

  def show
    if @video
      render json: @video, include: [reviews: { include: [:user]}]
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
        :rating,
        reviews_attributes: [:content, :user_id]
      )
    end
end
