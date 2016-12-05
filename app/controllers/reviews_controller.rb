class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit,:update,:destroy]
  def create

    		@course = Course.find(params[:course_id])

    		@review = @course.reviews.create(review_params)
			@review.course_id=@course.course_id

    		redirect_to course_path(@course)
  		end
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to user_index_path, notice: 'Review was removed.' }
    end
  end
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to user_index_path, notice: 'Review was updated.' }
      else
        format.html { render :edit }
      end
    end
  end
  def edit
  end

  	private
      def set_review
        @review = Review.find(params[:id])
      end

    	def review_params
      	params.require(:review).permit(:user_id, :professor, :review, :course_id)
      end
end
