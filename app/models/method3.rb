# encoding: utf-8
class Method3 < ActiveRecord::Base
  belongs_to :target
  after_initialize :init

  def init
    self.title = "การจัดแกนนำเพื่อเข้าถึงกลุมเป้าหมาย (เฉพาะกรณีเป้าหมายเป็นเยาวชนกลุ่มเปราะบาง)"
    self.step1_title = "ขั้นตอนการคัดเลือกแกนนำเยาวชนและเจ้าหน้าที่ภาคสนาม"
    self.step2_title = "ขั้นตอนการอบรมแกนนำเยาวชนและเจ้าหน้าที่ภาคสนาม"
    self.step3_title = "ขั้นตอนการหนุนเสริมแกนนำเยาวชนและเจ้าหน้าที่ภาคสนาม"
    self.step4_title = "ขั้นตอนการติดตามและประเมินผลแกนนำเยาวชนและเจ้าหน้าที่ภาคสนาม3.4 ขั้นตอนการติดตามและประเมินผลแกนนำเยาวชนและเจ้าหน้าที่ภาคสนาม"
  end
end


# == Schema Information
#
# Table name: method3s
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
#  step1_dens  :integer
#  step2_dens  :integer
#  step3_dens  :integer
#  step4_dens  :integer
#  created_at  :datetime
#  updated_at  :datetime
#  is_check    :boolean
#

