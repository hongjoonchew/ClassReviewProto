class ProblemsController < ApplicationController

  def create
    @problem = Problem.new(problem_params)

    respond_to do |format|
      if @problem.save
        format.html {redirect_to home_help_path, notice: 'Admin will respond shortly.'}
      else
        format.html {redirect_to home_contact_path, notice: 'Invalid input.'}
      end
    end
  end

  private
    def problem_params
      params.require(:problem).permit(:email, :problem)
    end
end
