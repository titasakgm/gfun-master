class Lr12 < ActiveRecord::Base
 belongs_to :place
end

# == Schema Information
#
# Table name: lr12s
#
#  id            :integer         not null, primary key
#  place_id      :integer
#  code_table_id :integer
#  user_id       :integer
#  youth_no      :integer
#  created_at    :datetime
#  updated_at    :datetime
#

