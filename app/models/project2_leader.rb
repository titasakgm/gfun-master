class Project2Leader < ActiveRecord::Base
  belongs_to :project2
  belongs_to :leader
end

# == Schema Information
#
# Table name: project2_leaders
#
#  id          :integer         not null, primary key
#  project2_id :integer
#  leader_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#

