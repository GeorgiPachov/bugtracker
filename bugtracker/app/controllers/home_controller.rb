class HomeController < ApplicationController
  # initialize projects
  def index
    @projects = Project.all
  end
end
