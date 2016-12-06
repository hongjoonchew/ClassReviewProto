class SearchController < ApplicationController
    def index
         @courses = Course.search(params[:search])
        if param[:search]
            @courses = Course.find(:all, :conditions => ['name LIKE ?', "%#{params[:search]}%"])
        end
    end

    def show
        @course = Course.find(params[:id])
    end
end