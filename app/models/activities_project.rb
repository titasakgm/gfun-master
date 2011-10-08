class ActivitiesProject < ActiveRecord::Base
  belongs_to :activity
  belongs_to :project
end


# == Schema Information
#
# Table name: activities_projects
#
#  id          :integer         not null, primary key
#  activity_id :integer
#  project_id  :integer
#  freq        :string(255)
#  provider    :string(255)
#  sponsor     :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  weight      :integer
#

