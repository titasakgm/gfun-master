require 'test_helper'

class Project2LeaderTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: project2_leaders
#
#  id          :integer         not null, primary key
#  project2_id :integer
#  leader_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#

