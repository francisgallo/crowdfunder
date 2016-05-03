class PledgesController < ApplicationController
  def index
    @pledges = Pledge.all
  end

  def create
    @pledge = @project.pledges.build(pledge_params)

    #we want the instance of the project's id to be set on the pledge
    if @pledge.save
      redirect_to projects_path
    else
      render 'project/show'
    end
  end

  def pledge_params
    params.require(:pledge).permit(:amount, :project_id, :user_id, :reward_id)
  end
end
