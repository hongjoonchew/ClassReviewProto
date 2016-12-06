class MaterialsController < ApplicationController
  def new
   @course = Course.find(params[:course_id])
   @material = @course.materials.new
  end
  
  
  
  def show
	@course = Course.find(params[:course_id])
    @syllabi = Material.where('professor = ? AND apparatus = ?', params[:professor], "Syllabus")
	@books = Material.where('professor = ? AND apparatus = ?', params[:professor], "Book")
  end
  
  
  def create
   @course = Course.find(params[:course_id])
   @material = @course.materials.create(material_params)
   @materials = params[:material]
   @professor = @materials[:professor]
   redirect_to course_material_path(:professor => @professor, :course_id => params[:course_id], :id => params[:course_id])
  end
  
  private
      def material_params
       params.require(:material).permit(:user_id, :apparatus, :professor, :course_id, :name, :ISBN)
      end
end
