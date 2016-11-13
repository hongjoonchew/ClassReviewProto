class ReviewConnectController < ApplicationController
def index
	@reviewconnect = Review_connector.where(course_id: params[:course_ids])

end
