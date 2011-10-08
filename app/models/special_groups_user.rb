# encoding : utf-8
class SpecialGroupsUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :special_group
  FLAG_DEF = {"no" => "ไม่มี", "have0" => "มีแต่ไม่ทราบจำนวน", "have" => "มี"}

private
  def before_save
    unless self.flag == "have"
      self.amount = nil
    end

  end
end

# == Schema Information
#
# Table name: special_groups_users
#
#  id               :integer         not null, primary key
#  special_group_id :integer
#  user_id          :integer
#  flag             :string(255)
#  amount           :integer
#  created_at       :datetime
#  updated_at       :datetime
#

