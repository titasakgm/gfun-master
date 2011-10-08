require 'test_helper'

class SpecialGroupsUserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
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

