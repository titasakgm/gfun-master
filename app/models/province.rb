class Province < ActiveRecord::Base
  has_many :amphurs
  has_many :ladmins, :through => :amphurs
end

# == Schema Information
#
# Table name: provinces
#
#  id   :integer         not null, primary key
#  name :string(255)
#

