# encoding: utf-8
class Method1 < ActiveRecord::Base
  belongs_to :target
  after_initialize :init

  def init
    self.title = "การให้ความรู้ ข้อมูล ข่าวสาร"

  end

end


# == Schema Information
#
# Table name: method1s
#
#  id          :integer         not null, primary key
#  project2_id :integer
#  year1_n     :integer
#  year2_n     :integer
#  year3_n     :integer
#  density     :integer
#  title       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  target_id   :integer
#  is_check    :boolean
#

