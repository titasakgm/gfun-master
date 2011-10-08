class Amphur < ActiveRecord::Base
  has_many :ladmins
  belongs_to :province
end

# == Schema Information
#
# Table name: amphurs
#
#  id          :integer         not null, primary key
#  province_id :integer
#  name        :string(255)
#

