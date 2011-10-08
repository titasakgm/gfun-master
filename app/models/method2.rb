# encoding : utf-8
class Method2 < ActiveRecord::Base
   belongs_to :target
  after_initialize :init

  def init
    self.title = "การปรับทัศนคติและพัฒนาทักษะ"
    self.step1_title = "ขั้นตอนการพัฒนาหลักสูตรหรือคู่มือการดำเนินกิจกรรม"
    self.step2_title = "ขั้นตอนการกำหนดกรอบเนื้อหา"
    self.step3_title = "ขั้นตอนการอบรมวิทยากรกระบวนการ"
    self.step4_title = "ขั้นตอนการหนุนเสริมวิทยากรกระบวนการ"
    self.step5_title = "ขั้นตอนการติดตามการจัดกิจกรรมตามหลักสูตรหรือคู่มือการดำเนินกิจกรรม"
  end

end


# == Schema Information
#
# Table name: method2s
#
#  id          :integer         not null, primary key
#  project2_id :integer
#  target_id   :integer
#  title       :string(255)
#  year1_n     :integer
#  year2_n     :integer
#  year3_n     :integer
#  step1_title :string(255)
#  step2_title :string(255)
#  step3_title :string(255)
#  step4_title :string(255)
#  step5_title :string(255)
#  step1_dens  :integer
#  step2_dens  :integer
#  step3_dens  :integer
#  step4_dens  :integer
#  step5_dens  :integer
#  created_at  :datetime
#  updated_at  :datetime
#  is_check    :boolean
#

