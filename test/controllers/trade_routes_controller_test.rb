require 'test_helper'

class TradeRoutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trade_route = trade_routes(:one)
  end

  test "should get index" do
    get trade_routes_url
    assert_response :success
  end

  test "should get new" do
    get new_trade_route_url
    assert_response :success
  end

  test "should create trade_route" do
    assert_difference('TradeRoute.count') do
      post trade_routes_url, params: { trade_route: { name: @trade_route.name } }
    end

    assert_redirected_to trade_route_url(TradeRoute.last)
  end

  test "should show trade_route" do
    get trade_route_url(@trade_route)
    assert_response :success
  end

  test "should get edit" do
    get edit_trade_route_url(@trade_route)
    assert_response :success
  end

  test "should update trade_route" do
    patch trade_route_url(@trade_route), params: { trade_route: { name: @trade_route.name } }
    assert_redirected_to trade_route_url(@trade_route)
  end

  test "should destroy trade_route" do
    assert_difference('TradeRoute.count', -1) do
      delete trade_route_url(@trade_route)
    end

    assert_redirected_to trade_routes_url
  end
end
