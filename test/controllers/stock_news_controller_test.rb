require "test_helper"

class StockNewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stock_news = stock_news(:one)
  end

  test "should get index" do
    get stock_news_index_url
    assert_response :success
  end

  test "should get new" do
    get new_stock_news_url
    assert_response :success
  end

  test "should create stock_news" do
    assert_difference('StockNews.count') do
      post stock_news_index_url, params: { stock_news: {  } }
    end

    assert_redirected_to stock_news_url(StockNews.last)
  end

  test "should show stock_news" do
    get stock_news_url(@stock_news)
    assert_response :success
  end

  test "should get edit" do
    get edit_stock_news_url(@stock_news)
    assert_response :success
  end

  test "should update stock_news" do
    patch stock_news_url(@stock_news), params: { stock_news: {  } }
    assert_redirected_to stock_news_url(@stock_news)
  end

  test "should destroy stock_news" do
    assert_difference('StockNews.count', -1) do
      delete stock_news_url(@stock_news)
    end

    assert_redirected_to stock_news_index_url
  end
end
