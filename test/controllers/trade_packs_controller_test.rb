require 'test_helper'

class TradePacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trade_pack = trade_packs(:one)
  end

  test "should get index" do
    get trade_packs_url
    assert_response :success
  end

  test "should get new" do
    get new_trade_pack_url
    assert_response :success
  end

  test "should create trade_pack" do
    assert_difference('TradePack.count') do
      post trade_packs_url, params: { trade_pack: { component_cost: @trade_pack.component_cost, duration: @trade_pack.duration, labor_cost: @trade_pack.labor_cost, name: @trade_pack.name } }
    end

    assert_redirected_to trade_pack_url(TradePack.last)
  end

  test "should show trade_pack" do
    get trade_pack_url(@trade_pack)
    assert_response :success
  end

  test "should get edit" do
    get edit_trade_pack_url(@trade_pack)
    assert_response :success
  end

  test "should update trade_pack" do
    patch trade_pack_url(@trade_pack), params: { trade_pack: { component_cost: @trade_pack.component_cost, duration: @trade_pack.duration, labor_cost: @trade_pack.labor_cost, name: @trade_pack.name } }
    assert_redirected_to trade_pack_url(@trade_pack)
  end

  test "should destroy trade_pack" do
    assert_difference('TradePack.count', -1) do
      delete trade_pack_url(@trade_pack)
    end

    assert_redirected_to trade_packs_url
  end
end
