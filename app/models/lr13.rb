class Lr13 < ActiveRecord::Base
  belongs_to :community
end


# == Schema Information
#
# Table name: lr13s
#
#  id            :integer         not null, primary key
#  community_id  :integer
#  code_table_id :integer
#  user_id       :integer
#  youth_no      :integer
#  created_at    :datetime
#  updated_at    :datetime
#

