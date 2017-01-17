require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username:  "user@example.com")
    @post = Post.new(url: "news.bbc.co.uk", user: @user)
    @comment = Comment.new(contents: "this site is great/nyou know", user: @user, post: @post)
  end

  test "should be valid" do
    assert @comment.valid?
  end

  test "contents should be present" do
    @comment.contents = ""
    assert_not @comment.valid?
  end 
end
