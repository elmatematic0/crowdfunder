class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to projects_url, :status => 301  
  end

  def index
    @projects = Project.all
  end


  private
  def project_params
    params.require(:project).permit(:title, :description, :goal, :start_date, :end_date)
  end
end
