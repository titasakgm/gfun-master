class Community < ActiveRecord::Base
  belongs_to :ladmin
end


# == Schema Information
#
# Table name: communities
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  description:text
#  address    :text
#  tumbon_id  :integer
#  created_at :datetime
#  updated_at :datetime
#  ladmin_id  :integer
#

