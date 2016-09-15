class FormsController < ApplicationController
  def new
    @form  = Form.new
  end

def create
  @form = Form.new(form_params)
  if @form.save
    redirect_to new_form_path
  end
end

private

  def form_params
    params.require(:form).permit(:user_id, :class, :professor, :review)
  end
end
