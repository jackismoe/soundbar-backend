class ReviewsController < ApplicationController
  before_action :require_login
  def index
    @reviews = current_user.reviews
  end

  def new
    @review = Review.new
    @instrument = Instrument.find_by(id: params[:instrument_id]).id
  end

  def create
    @review = current_user.instruments.find_by(params[id: :instrument_id]).reviews.create(review_params)
    @instrument = Instrument.find_by(params[:review][:instrument_id])
    @instrument.user_id = current_user.id
    redirect_to instruments_show_path(@instrument)
  end

  def edit
    find_review    
  end

  def update
    find_review    
    @review.update(params.require(:review).permit(:rating, :title, :content))
    redirect_to reviews_path
  end

  def delete
    find_review    
    @review.destroy
    redirect_to reviews_path(current_user)
  end

  private
  def review_params
    params.require(:review).permit(:rating, :title, :content, :user_id, :instrument_id)
  end

  def find_review
    @review = Review.find_by(id: params[:id])
  end
end
