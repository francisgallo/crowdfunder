class Project < ActiveRecord::Base
  belongs_to :users
  has_many :pledges
  has_many :rewards
  belongs_to :category

  accepts_nested_attributes_for :rewards,  reject_if:  :all_blank 
end
