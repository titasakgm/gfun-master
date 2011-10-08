class Threat < ActiveRecord::Base
  belongs_to :threat_type
end


# == Schema Information
#
# Table name: threats
#
#  id             :integer         not null, primary key
#  threat_type_id :integer
#  title          :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  weight         :integer
#

