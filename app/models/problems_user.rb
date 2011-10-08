class ProblemsUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :problem
  validates_uniqueness_of :problem_id, :scope => [:user_id]
end


# == Schema Information
#
# Table name: problems_users
#
#  id         :integer         not null, primary key
#  problem_id :integer
#  user_id    :integer
#  flag       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

