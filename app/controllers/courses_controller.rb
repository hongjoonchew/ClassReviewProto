class CoursesController < ApplicationController
  def courselist
    @data = Course.all
  end

  def new
    @course  = Course.new
  end

def create
  @course = Course.new(course_params)
  if @course.save
    redirect_to "http://localhost:3000/"
  end
end

  def show
    @review = Review.where(review_id: params[:course_id]) 
  end

  def index
    @course = Course.all
  end

private

  def course_params
    params.require(:course).permit(:course_id, :description)
  end
end
