class Pledge < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  belongs_to :reward


  count = 0

def pledge_count
  count += 1
  puts count
end


end
