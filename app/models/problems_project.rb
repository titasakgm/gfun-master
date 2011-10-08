class ProblemsProject < ActiveRecord::Base
belongs_to :problem
belongs_to :project

end


# == Schema Information
#
# Table name: problems_projects
#
#  id         :integer         not null, primary key
#  problem_id :integer
#  project_id :integer
#  created_at :datetime
#  updated_at :datetime
#

