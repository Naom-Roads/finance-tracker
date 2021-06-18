json.extract! stock_news, :id, :created_at, :updated_at
json.url stock_news_url(stock_news, format: :json)
