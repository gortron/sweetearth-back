class ProjectController < ApplicationController
  def index
    projects = Project.all
    render json: ProjectSerializer.new(projects)
  end

  def show
    project = Project.find_by(name: params[:name].titleize)
    render json: ProjectSerializer.new(project)
  end
end
