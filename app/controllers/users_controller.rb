class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
    @review = Review.where('user_id=?',params[:id])
  end
end
