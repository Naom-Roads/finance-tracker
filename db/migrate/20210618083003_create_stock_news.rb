class CreateStockNews < ActiveRecord::Migration[6.1]
  def change
    create_table :stock_news do |t|
      t.string :category
      t.string :headline
      t.binary :image
      t.binary :video
      t.text :news_summary
      t.string :news_source
      t.timestamps
    end
  end
end
