class Project2Factor < ActiveRecord::Base
  belongs_to :project2
  belongs_to :factor
end

# == Schema Information
#
# Table name: project2_factors
#
#  id          :integer         not null, primary key
#  project2_id :integer
#  factor_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#

