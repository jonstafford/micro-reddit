require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username:  "user@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "username should be present" do
    @user.username = ""
    assert_not @user.valid?
  end
  
  test "username should not be too short" do
    @user.username = "a@b"
    assert_not @user.valid?
  end

  test "username should not be too long" do
    @user.username = "a" * 256
    assert_not @user.valid?
  end

end
