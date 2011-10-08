class Target < ActiveRecord::Base
  has_many :project2_targets
  has_many :project2s, :through => :project2_targets
  has_many :method1s
  has_many :method2s
  has_many :method3s
  has_many :method4s
end


# == Schema Information
#
# Table name: targets
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  code        :string(255)
#

