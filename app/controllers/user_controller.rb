class UserController < ApplicationController
  def index
    @review = Review.where('user_id=?',current_user.id)
  end

  private
    def set_course
      @course = Course.find(params[:id])
    end
end
