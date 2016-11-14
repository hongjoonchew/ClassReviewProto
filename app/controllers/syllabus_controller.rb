class SyllabusController < ApplicationController
	def show
	@syllabi = Syllabi.where("syllabus_id = ?", params[:id])
	end
end
