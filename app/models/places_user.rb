class PlacesUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :place
end

# == Schema Information
#
# Table name: places_users
#
#  id         :integer         not null, primary key
#  place_id   :integer
#  user_id    :integer
#  male_no    :integer
#  female_no  :integer
#  created_at :datetime
#  updated_at :datetime
#

