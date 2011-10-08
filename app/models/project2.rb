class Project2 < ActiveRecord::Base
  belongs_to :user
  has_many :project2_targets
  has_many :targets, :through => :project2_targets


  has_one :method1
  has_one :method2
  has_one :method3
  has_one :method4

  has_many :project2_factors
  has_many :factors, :through => :project2_factors

  has_many :project2_leaders
  has_many :leaders, :through => :project2_leaders

  has_many :project2_budget_srcs


  accepts_nested_attributes_for :method1, :allow_destroy => true
  accepts_nested_attributes_for :method2, :allow_destroy => true
  accepts_nested_attributes_for :method3, :allow_destroy => true
  accepts_nested_attributes_for :method4, :allow_destroy => true

  accepts_nested_attributes_for :project2_budget_srcs, :allow_destroy => true

  validates_presence_of :fiscal_year
  has_many :project2_special_groups
  has_many :special_groups, :through => :project2_special_groups

  def self.gen_flat
    Project2.select(" *,
      project2s.title as project_title,
      factors.title as factor_title,
      factors.id as factor_id,
      project2s.id as project_id,

    ").joins(:factors)
  end
  def self.gen_flat2
    find_by_sql("
      select p.id,
      pf.id as pf_id,
      fact.id as fact_id,
      p.title as p_title,
      fact.title as fact_title
      from project2s p
      left join project2_factors pf on p.id = pf.project2_id
      left join factors fact on pf.factor_id = fact.id
      left join project2_targets pt on p.id = pt.project2_id
      left join targets on pt.target_id on targets.id
      left join users on p.user_id = users.id

    ")
  end
end



# == Schema Information
#
# Table name: project2s
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  nmonth      :integer
#  fiscal_year :integer
#  a_budget    :decimal(, )
#  b_budget    :decimal(, )
#  c_budget    :decimal(, )
#  year1n      :integer
#  year2n      :integer
#  year3n      :integer
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#  cover_year  :integer
#

