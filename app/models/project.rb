class Project < ActiveRecord::Base
  STATUS = ["New", "Close"]
  FISCAL_YEAR = (2553..2560).to_a

  has_many :projects_staffs, :dependent => :destroy
  has_many :staffs, :through => :projects_staffs
  has_one :youth_progress
  belongs_to :user
  has_many :problems_projects, :dependent => :destroy
  has_many :problems, :through => :problems_projects

  has_many :projects_targets, :dependent => :destroy
  has_many :targets, :through => :projects_targets

  has_many :activities_projects, :dependent => :destroy
  has_many :activities, :through => :activities_projects

  has_and_belongs_to_many :factors

  accepts_nested_attributes_for :youth_progress

  accepts_nested_attributes_for :staffs, :allow_destroy => true
  accepts_nested_attributes_for :projects_staffs, :allow_destroy => true
  accepts_nested_attributes_for :activities_projects, :allow_destroy => true
  accepts_nested_attributes_for :problems_projects
  accepts_nested_attributes_for :projects_targets
  accepts_nested_attributes_for :factors

  belongs_to :budget_src
end






# == Schema Information
#
# Table name: projects
#
#  id            :integer         not null, primary key
#  title         :string(255)
#  status        :string(255)
#  fiscal_year   :integer
#  yq1           :integer
#  yq2           :integer
#  yq3           :integer
#  yq4           :integer
#  a_budget      :integer
#  a_youth_no    :integer
#  b_budget      :integer
#  b_youth_no    :integer
#  c_budget      :integer
#  c_youth_no    :integer
#  created_at    :datetime
#  updated_at    :datetime
#  objective     :text
#  user_id       :integer
#  budget_src_id :integer
#  y2_budget     :integer
#  y3_budget     :integer
#  nday          :integer
#

