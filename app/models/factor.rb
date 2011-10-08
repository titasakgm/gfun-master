class Factor < ActiveRecord::Base
  has_many :project2_factors
  has_many :project2s, :through => :project2_factors
end



# == Schema Information
#
# Table name: factors
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  code        :string(255)
#

