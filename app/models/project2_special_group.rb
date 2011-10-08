class Project2SpecialGroup < ActiveRecord::Base
  belongs_to :project2
  belongs_to :special_group
  validates_uniqueness_of :special_group_id, :scope => :project2_id
end

# == Schema Information
#
# Table name: project2_special_groups
#
#  id               :integer         not null, primary key
#  project2_id      :integer
#  special_group_id :integer
#  created_at       :datetime
#  updated_at       :datetime
#

