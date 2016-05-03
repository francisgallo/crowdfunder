class RewardsController < ApplicationController
  def index
    @rewards = Reward.all
  end

  def show
    @reward = Reward.find(params[:id])
  end

  # def new
  #   @reward = Reward.new
  # end

  def create
    @reward = @project.rewards.build(rewards_params)

    # @reward = Reward.new(rewards_params)
    # @reward = Project[:id]

#do this to set the project id
#looks at project, sets id on new reward

    if @reward.save
      redirect_to projects_path
    else
      render 'projects/show'
    end
  end

  private

  def rewards_params
    params.require(:reward).permit(:amount, :description, :project_id)
  end




end
