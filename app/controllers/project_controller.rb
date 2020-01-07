class ProjectController < ApplicationController
  def index
    @projects = Project.all
    render :json => @projects, :include => :pledges
  end
end
