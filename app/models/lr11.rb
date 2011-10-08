class Lr11 < ActiveRecord::Base
  belongs_to :school
  belongs_to :user
  validates :school_id, :uniqueness => { :scope => [:user_id] }
end


# == Schema Information
#
# Table name: lr11s
#
#  id            :integer         not null, primary key
#  school_id     :integer
#  code_table_id :integer
#  user_id       :integer
#  male_no       :integer
#  female_no     :integer
#  created_at    :datetime
#  updated_at    :datetime
#

