require 'test_helper'

class Project2BudgetSrcTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: project2_budget_srcs
#
#  id            :integer         not null, primary key
#  project2_id   :integer
#  budget_src_id :integer
#  budget        :decimal(, )
#  nyear         :integer
#  created_at    :datetime
#  updated_at    :datetime
#

