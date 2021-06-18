require "application_system_test_case"

class StockNewsTest < ApplicationSystemTestCase
  setup do
    @stock_news = stock_news(:one)
  end

  test "visiting the index" do
    visit stock_news_url
    assert_selector "h1", text: "Stock News"
  end

  test "creating a Stock news" do
    visit stock_news_url
    click_on "New Stock News"

    click_on "Create Stock news"

    assert_text "Stock news was successfully created"
    click_on "Back"
  end

  test "updating a Stock news" do
    visit stock_news_url
    click_on "Edit", match: :first

    click_on "Update Stock news"

    assert_text "Stock news was successfully updated"
    click_on "Back"
  end

  test "destroying a Stock news" do
    visit stock_news_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stock news was successfully destroyed"
  end
end
