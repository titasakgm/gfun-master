class Project2BudgetSrc < ActiveRecord::Base
  belongs_to :project2
  belongs_to :budget_src
end

# == Schema Information
#
# Table name: project2_budget_srcs
#
#  id            :integer         not null, primary key
#  project2_id   :integer
#  budget_src_id :integer
#  budget        :decimal(, )
#  nyear         :integer
#  created_at    :datetime
#  updated_at    :datetime
#

