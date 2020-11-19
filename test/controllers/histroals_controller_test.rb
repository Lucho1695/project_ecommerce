require 'test_helper'

class historialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @histroal = historials(:one)
  end

  test "should get index" do
    get historials_url
    assert_response :success
  end

  test "should get new" do
    get new_histroal_url
    assert_response :success
  end

  test "should create histroal" do
    assert_difference('Histroal.count') do
      post historials_url, params: { histroal: { order_id: @histroal.order_id } }
    end

    assert_redirected_to histroal_url(Histroal.last)
  end

  test "should show histroal" do
    get histroal_url(@histroal)
    assert_response :success
  end

  test "should get edit" do
    get edit_histroal_url(@histroal)
    assert_response :success
  end

  test "should update histroal" do
    patch histroal_url(@histroal), params: { histroal: { order_id: @histroal.order_id } }
    assert_redirected_to histroal_url(@histroal)
  end

  test "should destroy histroal" do
    assert_difference('Histroal.count', -1) do
      delete histroal_url(@histroal)
    end

    assert_redirected_to historials_url
  end
end
