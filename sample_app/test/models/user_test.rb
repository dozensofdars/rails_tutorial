require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:example)
  end

  test "should be valid" do
    assert @user.valid?
  end
end
