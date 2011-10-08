require 'test_helper'

class ProblemsUserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: problems_users
#
#  id         :integer         not null, primary key
#  problem_id :integer
#  user_id    :integer
#  flag       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

