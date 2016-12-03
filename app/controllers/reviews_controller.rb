class ReviewsController < ApplicationController
  def create

    		@course = Course.find(params[:course_id])

    		@review = @course.reviews.create(problem_params)
        @review.course_id=@course.course_id

    		redirect_to course_path(@course)
  		end

  		private
    		def problem_params
      		params.require(:review).permit(:user_id, :professor, :review, :course_id)
        end
end
