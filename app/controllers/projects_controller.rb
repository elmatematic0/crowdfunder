class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
  end

  def show
    @project = Project.find(params[:id])
  end

  def destroy
  end

  def index
    @projects = Project.all
  end

  def create
  end

  def update
  end
end
