class School < ActiveRecord::Base
  belongs_to :category
end


# == Schema Information
#
# Table name: schools
#
#  id       :integer         not null, primary key
#  name     :string(255)
#  changwat :string(255)
#  ccode    :string(255)
#  amphur   :string(255)
#  acode    :string(255)
#  tambon   :string(255)
#  tcode    :string(255)
#  category_id :integer
#

