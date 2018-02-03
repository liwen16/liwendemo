require 'test_helper'

class LiwenSamplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @liwen_sample = liwen_samples(:one)
  end

  test "should get index" do
    get liwen_samples_url
    assert_response :success
  end

  test "should get new" do
    get new_liwen_sample_url
    assert_response :success
  end

  test "should create liwen_sample" do
    assert_difference('LiwenSample.count') do
      post liwen_samples_url, params: { liwen_sample: { instructions: @liwen_sample.instructions, name: @liwen_sample.name } }
    end

    assert_redirected_to liwen_sample_url(LiwenSample.last)
  end

  test "should show liwen_sample" do
    get liwen_sample_url(@liwen_sample)
    assert_response :success
  end

  test "should get edit" do
    get edit_liwen_sample_url(@liwen_sample)
    assert_response :success
  end

  test "should update liwen_sample" do
    patch liwen_sample_url(@liwen_sample), params: { liwen_sample: { instructions: @liwen_sample.instructions, name: @liwen_sample.name } }
    assert_redirected_to liwen_sample_url(@liwen_sample)
  end

  test "should destroy liwen_sample" do
    assert_difference('LiwenSample.count', -1) do
      delete liwen_sample_url(@liwen_sample)
    end

    assert_redirected_to liwen_samples_url
  end
end
