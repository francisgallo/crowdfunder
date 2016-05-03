class Reward < ActiveRecord::Base
  belongs_to :projects
  has_many :pledges
  has_many :users, through: :pledges 

end
