require 'test_helper'

class DwReport1Test < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: dw_report1s
#
#  id                 :integer         not null, primary key
#  special_group_name :string(255)
#  special_group_id   :integer
#  project2_id        :integer
#  project2_title     :string(255)
#  a_budget           :decimal(, )
#  budget_src_id      :integer
#  budget_src_title   :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  user_id            :integer
#

