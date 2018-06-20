require 'test_helper'

class DeliveryInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delivery_info = delivery_infos(:one)
  end

  test "should get index" do
    get delivery_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_delivery_info_url
    assert_response :success
  end

  test "should create delivery_info" do
    assert_difference('DeliveryInfo.count') do
      post delivery_infos_url, params: { delivery_info: { address1: @delivery_info.address1, address2: @delivery_info.address2, phone: @delivery_info.phone } }
    end

    assert_redirected_to delivery_info_url(DeliveryInfo.last)
  end

  test "should show delivery_info" do
    get delivery_info_url(@delivery_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_delivery_info_url(@delivery_info)
    assert_response :success
  end

  test "should update delivery_info" do
    patch delivery_info_url(@delivery_info), params: { delivery_info: { address1: @delivery_info.address1, address2: @delivery_info.address2, phone: @delivery_info.phone } }
    assert_redirected_to delivery_info_url(@delivery_info)
  end

  test "should destroy delivery_info" do
    assert_difference('DeliveryInfo.count', -1) do
      delete delivery_info_url(@delivery_info)
    end

    assert_redirected_to delivery_infos_url
  end
end
