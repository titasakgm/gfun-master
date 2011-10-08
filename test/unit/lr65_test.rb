require 'test_helper'

class Lr65Test < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: lr65s
#
#  id            :integer         not null, primary key
#  user_id       :integer
#  project_name  :string(255)
#  target_name   :string(255)
#  activity_type :string(255)
#  budget        :integer
#  owner         :string(255)
#  target_no     :integer
#  created_at    :datetime
#  updated_at    :datetime
#

