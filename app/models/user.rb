# encoding: utf-8
class User < ActiveRecord::Base
  acts_as_authentic
  belongs_to :province
  belongs_to :amphur
  belongs_to :ladmin
  named_scope :with_role, lambda { |role| {:conditions => "roles_mask & #{2**ROLES.index(role.to_s)} > 0"} }

  has_many :places_users
  has_many :places, :through => :places_users

  has_many :communities_users
  has_many :communities, :through => :communities_users

  has_many :special_groups_users
  has_many :special_groups, :through => :special_groups_users

  has_many :schools_users
  has_many :schools, :through => :schools_users

  has_many :problems_users
  has_many :problems, :through => :problems_users
  #has_many :projects
  has_many :project2s
  has_many :user_threats
  has_many :threats, :through => :user_threats
  ROLES = %w[admin lad amp prov reg center]
  PRINT_ROLES = {"admin" => "admin", "lad" => "อปท.", "amp" => "อำเภอ", "prov" => "จังหวัด", "reg" => "เขต", "center" => "ส่วนกลาง"}
  def roles=(roles)
    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.sum
  end

  def roles
    ROLES.reject { |r| ((roles_mask || 0) & 2**ROLES.index(r)).zero? }
  end

  def role_symbols
    roles.map(&:to_sym)
  end
  def role?(role)
    roles.include? role.to_s
  end

end


# == Schema Information
#
# Table name: users
#
#  id                :integer         not null, primary key
#  login             :string(255)     not null
#  crypted_password  :string(255)     not null
#  password_salt     :string(255)     not null
#  persistence_token :string(255)     not null
#  login_count       :integer         default(0), not null
#  last_request_at   :datetime
#  last_login_at     :datetime
#  current_login_at  :datetime
#  last_login_ip     :string(255)
#  current_login_ip  :string(255)
#  province_id       :integer
#  amphur_id         :integer
#  ladmin_id         :integer
#  created_at        :datetime
#  updated_at        :datetime
#  roles_mask        :integer
#

