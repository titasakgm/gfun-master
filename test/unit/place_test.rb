require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end


# == Schema Information
#
# Table name: places
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  description :text
#  address    :text
#  created_at :datetime
#  updated_at :datetime
#  ladmin_id  :integer
#

