class Project < ActiveRecord::Base
  belongs_to :user
  has_many :pledges
  has_many :rewards
  belongs_to :category

  accepts_nested_attributes_for :rewards,  reject_if:  :all_blank

  def total_pledges
    return self.pledges.sum(:amount)
  end

  def pledge_count
      return self.pledges.length 
  end

  def days_left
  return  (self.end_date.to_date - Time.now.to_date).round
  end
end
