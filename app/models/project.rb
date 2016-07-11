class Project < ActiveRecord::Base
  belongs_to :user
  has_many :pledges
  has_many :rewards
  belongs_to :category

  accepts_nested_attributes_for :rewards,  reject_if:  :all_blank

  validates :title, :description, :goal , :location, :end_date, :start_date, presence: true
  validate :correct_date
  validate :endDatelaterthenStartDate


  mount_uploader :avatar, AvatarUploader


  def total_pledges
    return self.pledges.sum(:amount)
  end

  def pledge_count
    return self.pledges.length
  end

  def days_left
    return (self.end_date.to_date - Time.now.to_date).round
  end

  def total_goal
    if self.total_pledges > self.goal
      return "you have reached your goal"
    else
    end
  end

  def correct_date
      if self.start_date < Time.now.to_date
        errors.add(:start_date, "Start date has to be a later date")
      end
  end

  def endDatelaterthenStartDate
    if self.end_date <= self.start_date
      errors.add(:end_date," has to be later then  Start date ")
    end
  end

end
