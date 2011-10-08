class Tumbon < ActiveRecord::Base
  def schools
    School.where("tcode = #{self.id}")
  end
end

# == Schema Information
#
# Table name: tumbons
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  amphur_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

