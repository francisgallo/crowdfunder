class Pledge < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  belongs_to :reward

 validates :amount,:project_id, :user_id, :reward_id, presence: true
end
