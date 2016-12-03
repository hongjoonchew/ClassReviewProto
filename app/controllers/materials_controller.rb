class MaterialsController < ApplicationController
  def new
  end

  def show
    @materials = Material.where('professor = ? ', params[:professor])
  end
end
