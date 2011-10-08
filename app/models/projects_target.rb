class ProjectsTarget < ActiveRecord::Base
  belongs_to :project
  belongs_to :target
end

# == Schema Information
#
# Table name: projects_targets
#
#  project_id :integer
#  target_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

