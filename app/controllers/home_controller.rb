class HomeController < ApplicationController
  def contact
    @problem = Problem.new
  end

end
