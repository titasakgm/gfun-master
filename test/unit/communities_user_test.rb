require 'test_helper'

class CommunitiesUserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: communities_users
#
#  id           :integer         not null, primary key
#  community_id :integer
#  user_id      :integer
#  male_no      :integer
#  female_no    :integer
#  created_at   :datetime
#  updated_at   :datetime
#

