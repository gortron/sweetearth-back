class ProjectController < ApplicationController
  def index
    projects = Project.all
    options = { include: [:pledges] }
    render json: ProjectSerializer.new(projects, options)
  end
end
