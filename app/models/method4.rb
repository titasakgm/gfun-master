# encoding: utf-8
class Method4 < ActiveRecord::Base
  belongs_to :target
  after_initialize :init

  def init
    self.title = "เครือข่ายบริการสุขภาพที่เป็นมิตรกับเยาวชน"

  end
end


# == Schema Information
#
# Table name: method4s
#
#  id          :integer         not null, primary key
#  project2_id :integer
#  target_id   :integer
#  title       :string(255)
#  density     :integer
#  year1_n     :integer
#  year2_n     :integer
#  year3_n     :integer
#  created_at  :datetime
#  updated_at  :datetime
#  is_check    :boolean
#

