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
	@name = params[:id]
	@review = Review.where("course_id = ?", params[:id])
	@materials = Material.where("course_id = ?", params[:id])
	
  end

  def index
    @course = Course.all
  end

private

  def course_params
    params.require(:course).permit(:course_id, :description)
  end
end
