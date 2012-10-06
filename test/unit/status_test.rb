require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  should allow_value("living it up and rofyolo").for(:title)
  should_not allow_value(nil).for(:title)
  should_not allow_value("A" * 141).for(:title)

end
