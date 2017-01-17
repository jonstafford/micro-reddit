require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username:  "user@example.com")
    @post = Post.new(url: "news.bbc.co.uk", user: @user)
  end

  test "should be valid" do
    assert @post.valid?
  end

  test "url should be present" do
    @post.url = ""
    assert_not @post.valid?
  end 
end
