class ThreatType < ActiveRecord::Base
  has_many :threats
end


# == Schema Information
#
# Table name: threat_types
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  weight     :integer
#

