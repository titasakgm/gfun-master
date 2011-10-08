class Activity < ActiveRecord::Base
  FREQ = ["daily", "weekly", "bimonthly", "monthly", "quaterly", "semi-annually", "annually"]
  has_many :activities_projects
  has_many :projects, :through => :activities_projects
end


# == Schema Information
#
# Table name: activities
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  code        :string(255)
#

