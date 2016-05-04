class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to projects_path
      # alert: "Project Created Yo"
    else
        render :new
    end
  end

  def edit
  end

  def destroy
    @project = Project.find(params[:id])

    @project.destroy
    redirect_to projects_path
  end

  private

  def project_params
    (params).require(:project).permit(:title, :description, :goal, :start_date, :end_date, :location,:user_id, :category_id, :image,
        rewards_attributes: [:amount,:description , :project_id])
  end
end
