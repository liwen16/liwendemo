require 'test_helper'

class LiwentestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @liwentest = liwentests(:one)
  end

  test "should get index" do
    get liwentests_url
    assert_response :success
  end

  test "should get new" do
    get new_liwentest_url
    assert_response :success
  end

  test "should create liwentest" do
    assert_difference('Liwentest.count') do
      post liwentests_url, params: { liwentest: { name: @liwentest.name } }
    end

    assert_redirected_to liwentest_url(Liwentest.last)
  end

  test "should show liwentest" do
    get liwentest_url(@liwentest)
    assert_response :success
  end

  test "should get edit" do
    get edit_liwentest_url(@liwentest)
    assert_response :success
  end

  test "should update liwentest" do
    patch liwentest_url(@liwentest), params: { liwentest: { name: @liwentest.name } }
    assert_redirected_to liwentest_url(@liwentest)
  end

  test "should destroy liwentest" do
    assert_difference('Liwentest.count', -1) do
      delete liwentest_url(@liwentest)
    end

    assert_redirected_to liwentests_url
  end
end
