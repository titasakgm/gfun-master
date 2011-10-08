require 'test_helper'

class UserThreatTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: user_threats
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  threat_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

