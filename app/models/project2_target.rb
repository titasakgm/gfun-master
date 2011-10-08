class Project2Target < ActiveRecord::Base
  belongs_to :project2
  belongs_to :target
end


# == Schema Information
#
# Table name: project2_targets
#
#  id          :integer         not null, primary key
#  project2_id :integer
#  target_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#

