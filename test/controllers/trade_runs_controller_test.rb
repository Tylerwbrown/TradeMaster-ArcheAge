require 'test_helper'

class TradeRunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trade_run = trade_runs(:one)
  end

  test "should get index" do
    get trade_runs_url
    assert_response :success
  end

  test "should get new" do
    get new_trade_run_url
    assert_response :success
  end

  test "should create trade_run" do
    assert_difference('TradeRun.count') do
      post trade_runs_url, params: { trade_run: { name: @trade_run.name } }
    end

    assert_redirected_to trade_run_url(TradeRun.last)
  end

  test "should show trade_run" do
    get trade_run_url(@trade_run)
    assert_response :success
  end

  test "should get edit" do
    get edit_trade_run_url(@trade_run)
    assert_response :success
  end

  test "should update trade_run" do
    patch trade_run_url(@trade_run), params: { trade_run: { name: @trade_run.name } }
    assert_redirected_to trade_run_url(@trade_run)
  end

  test "should destroy trade_run" do
    assert_difference('TradeRun.count', -1) do
      delete trade_run_url(@trade_run)
    end

    assert_redirected_to trade_runs_url
  end
end
