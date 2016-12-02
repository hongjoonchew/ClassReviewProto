class ReviewsController < ApplicationController
  def create

    		@course = Course.find(params[:course_id])

    		@review = @course.reviews.create(problem_params)

    		redirect_to course_path(@course)
  		end

  		private
    		def problem_params
      		params.require(:review).permit(:professor, :review)
        end
end
