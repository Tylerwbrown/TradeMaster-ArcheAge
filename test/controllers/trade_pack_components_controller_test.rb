require 'test_helper'

class TradePackComponentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trade_pack_component = trade_pack_components(:one)
  end

  test "should get index" do
    get trade_pack_components_url
    assert_response :success
  end

  test "should get new" do
    get new_trade_pack_component_url
    assert_response :success
  end

  test "should create trade_pack_component" do
    assert_difference('TradePackComponent.count') do
      post trade_pack_components_url, params: { trade_pack_component: {  } }
    end

    assert_redirected_to trade_pack_component_url(TradePackComponent.last)
  end

  test "should show trade_pack_component" do
    get trade_pack_component_url(@trade_pack_component)
    assert_response :success
  end

  test "should get edit" do
    get edit_trade_pack_component_url(@trade_pack_component)
    assert_response :success
  end

  test "should update trade_pack_component" do
    patch trade_pack_component_url(@trade_pack_component), params: { trade_pack_component: {  } }
    assert_redirected_to trade_pack_component_url(@trade_pack_component)
  end

  test "should destroy trade_pack_component" do
    assert_difference('TradePackComponent.count', -1) do
      delete trade_pack_component_url(@trade_pack_component)
    end

    assert_redirected_to trade_pack_components_url
  end
end
