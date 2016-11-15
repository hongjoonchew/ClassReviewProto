class ReviewsController < ApplicationController
  def new
    @review  = Review.new
	@id = params[:format]
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
    params.require(:review).permit(:email, :course_id, :professor, :review, :review_id)
  end
end
