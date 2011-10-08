require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end





# == Schema Information
#
# Table name: projects
#
#  id            :integer         not null, primary key
#  title         :string(255)
#  status        :string(255)
#  fiscal_year   :integer
#  yq1           :integer
#  yq2           :integer
#  yq3           :integer
#  yq4           :integer
#  a_budget      :integer
#  a_youth_no    :integer
#  b_budget      :integer
#  b_youth_no    :integer
#  c_budget      :integer
#  c_youth_no    :integer
#  created_at    :datetime
#  updated_at    :datetime
#  objective     :text
#  user_id       :integer
#  budget_src_id :integer
#  y2_budget     :integer
#  y3_budget     :integer
#  nday          :integer
#

