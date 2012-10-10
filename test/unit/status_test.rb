require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  should allow_value("living it up and rofyolo").for(:title)
  should_not allow_value(nil).for(:title)
  should_not allow_value("A" * 141).for(:title)

  test "descending" do
    status1 = FactoryGirl.create(:status)
    status2 = FactoryGirl.create(:status)
    assert_equal [status2, status1], Status.descending
  end
end
