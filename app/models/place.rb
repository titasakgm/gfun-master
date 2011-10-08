class Place < ActiveRecord::Base
  belongs_to :ladmin
end


# == Schema Information
#
# Table name: places
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  desciption :text
#  address    :text
#  created_at :datetime
#  updated_at :datetime
#  ladmin_id  :integer
#

