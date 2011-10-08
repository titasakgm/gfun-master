class Ladmin < ActiveRecord::Base
  belongs_to :amphur
  has_many :places
  has_many :communities
  def schools
    School.where("acode = '#{self.amphur_id}'")
  end

end

# == Schema Information
#
# Table name: ladmins
#
#  id        :integer         not null, primary key
#  amphur_id :integer
#  name      :string(255)
#

