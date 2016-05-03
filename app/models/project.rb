class Project < ActiveRecord::Base
  belongs_to :users
  has_many :pledges
  has_many :rewards

end
