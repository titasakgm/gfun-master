require 'test_helper'

class ThreatTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end


# == Schema Information
#
# Table name: threats
#
#  id             :integer         not null, primary key
#  threat_type_id :integer
#  title          :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  weight         :integer
#

