class PledgesController < ApplicationController
  def index
    @pledges = Pledge.all


  end

  def create
    puts params
    @project = Project.find(params[:project_id])
    @pledge_user= current_user
    @pledge = @project.pledges.build(pledge_params)

    #we want the instance of the project's id to be set on the pledge
    respond_to do |format|
      format.json do
        if @pledge.save
          render (json: {
            count: @project.pledges.count
          })
        else
          render json: nil, status: 422
        end
      end
    end

  end

  def pledge_params
    params.require(:pledge).permit(:amount, :project_id, :user_id, :reward_id)
  end
end
