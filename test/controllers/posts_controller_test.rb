require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index," do
    get posts_index,_url
    assert_response :success
  end

  test "should get edit,new,show" do
    get posts_edit,new,show_url
    assert_response :success
  end

end
