class ProjectsStaff < ActiveRecord::Base
  belongs_to :project
  belongs_to :staff
  has_one :progress
  accepts_nested_attributes_for :progress

  after_create :create_progress

private

  def create_progress
    self.progress = Progress.create
  end
end


# == Schema Information
#
# Table name: projects_staffs
#
#  id         :integer         not null, primary key
#  project_id :integer
#  staff_id   :integer
#  year1      :integer
#  amount1    :integer
#  year2      :integer
#  amount2    :integer
#  year3      :integer
#  amount3    :integer
#  created_at :datetime
#  updated_at :datetime
#

