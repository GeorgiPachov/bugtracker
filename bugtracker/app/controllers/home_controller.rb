class HomeController < ApplicationController
  def index
    # @projects = Project.all
    page = params[:page]
    page ||= 0
    @projects = Project.paginate(:page => params[:page])
  end
end
