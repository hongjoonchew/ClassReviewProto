class ReviewsController < ApplicationController
  def new
    @review  = Review.new
  end

def create
  @review = Review.new(review_params)
  if @review.save
    redirect_to "http://localhost:3000/"
  end
end

  def show
  end

  def index
    @review = Review.all
  end

private

  def review_params
    params.require(:review).permit(:user_id, :course_id, :professor, :review)
  end
end
