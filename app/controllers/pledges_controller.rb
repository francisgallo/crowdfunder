class PledgesController < ApplicationController
  def index
    @pledges = Pledge.all

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    puts params
    @project = Project.find(params[:project_id])
    @pledge_user= current_user
    @pledge = @project.pledges.build(pledge_params)

    #we want the instance of the project's id to be set on the pledge
    #


    if @pledge.save
      # redirect_to projects_path
    else
      render 'project/show'
    end

  end

  def pledge_params
    params.require(:pledge).permit(:amount, :project_id, :user_id, :reward_id)
  end
end
