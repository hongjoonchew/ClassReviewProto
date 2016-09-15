class FormsController < ApplicationController
  def new
    @form  = Form.new
  end

def create
  @form = Form.new(form_params)
  if @form.save
    redirect_to "http://localhost:3000/"
  end
end

private

  def form_params
    params.require(:form).permit(:user_id, :course, :professor, :review)
  end
end
