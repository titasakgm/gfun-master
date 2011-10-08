class Progress < ActiveRecord::Base
end

# == Schema Information
#
# Table name: progresses
#
#  id                :integer         not null, primary key
#  projects_staff_id :integer
#  q1                :integer
#  q2                :integer
#  q3                :integer
#  q4                :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#

