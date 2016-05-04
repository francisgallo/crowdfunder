class Project < ActiveRecord::Base
  belongs_to :users
  has_many :pledges
  has_many :rewards
  belongs_to :category

end
