require 'test_helper'

class PayMethodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pay_method = pay_methods(:one)
  end

  test "should get index" do
    get pay_methods_url
    assert_response :success
  end

  test "should get new" do
    get new_pay_method_url
    assert_response :success
  end

  test "should create pay_method" do
    assert_difference('PayMethod.count') do
      post pay_methods_url, params: { pay_method: { bank: @pay_method.bank, card: @pay_method.card, card_number: @pay_method.card_number, card_type: @pay_method.card_type, csv: @pay_method.csv, date: @pay_method.date, method: @pay_method.method } }
    end

    assert_redirected_to pay_method_url(PayMethod.last)
  end

  test "should show pay_method" do
    get pay_method_url(@pay_method)
    assert_response :success
  end

  test "should get edit" do
    get edit_pay_method_url(@pay_method)
    assert_response :success
  end

  test "should update pay_method" do
    patch pay_method_url(@pay_method), params: { pay_method: { bank: @pay_method.bank, card: @pay_method.card, card_number: @pay_method.card_number, card_type: @pay_method.card_type, csv: @pay_method.csv, date: @pay_method.date, method: @pay_method.method } }
    assert_redirected_to pay_method_url(@pay_method)
  end

  test "should destroy pay_method" do
    assert_difference('PayMethod.count', -1) do
      delete pay_method_url(@pay_method)
    end

    assert_redirected_to pay_methods_url
  end
end
