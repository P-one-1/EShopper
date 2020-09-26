require 'test_helper'

class BlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get blog" do
    get blogs_blog_url
    assert_response :success
  end

  test "should get blog_single" do
    get blogs_blog_single_url
    assert_response :success
  end

end
