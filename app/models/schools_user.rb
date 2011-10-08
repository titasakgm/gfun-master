class SchoolsUser < ActiveRecord::Base
  belongs_to :school
  belongs_to :user
end


# == Schema Information
#
# Table name: schools_users
#
#  id         :integer         not null, primary key
#  school_id  :integer
#  user_id    :integer
#  male_no    :integer
#  female_no  :integer
#  created_at :datetime
#  updated_at :datetime
#

