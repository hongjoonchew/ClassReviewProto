class CoursesController < ApplicationController
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
  end

  def index
    @course = Course.all
  end

private

  def course_params
    params.require(:course).permit(:user_id, :course, :professor, :description)
  end
end
