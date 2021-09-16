class ReviewsController < ApplicationController
  before_action :set_video

  def create
    @review = @video.reviews.build(review_params)
    if @review.save
      render json: @review, include: [:user], status: :created
    else
      render json: { errors: @review.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
    def set_video
      @video = Video.find_by_id(params[:video_id])
    end

    def review_params
      params.permit(:content, :user_id)
    end
end
