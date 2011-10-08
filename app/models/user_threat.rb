class UserThreat < ActiveRecord::Base
  belongs_to :user
  belongs_to :threat
end

# == Schema Information
#
# Table name: user_threats
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  threat_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

