class ProjectsController < ApplicationController

  skip_before_action :require_login, only: [:index, :show]

  def index
    @projects = Project.all

  end

  def show
    @project = Project.find(params[:id])

    @pledge = Pledge.new

    respond_to do |format|
      format.html
      format.js
    end

  end

  def new
    @project = Project.new
  end

  def create
    @user = User.find(session[:user_id])

      @project = @user.owned_projects.build(project_params)

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
    @project = project.find[params(:id)]
    @project.destroy
    redirect_to current_user
  end

  private

  def project_params
    (params).require(:project).permit(:title, :description, :goal, :start_date, :end_date, :location,:user_id, :category_id, :image,
        rewards_attributes: [:amount,:description , :project_id])
  end
end
