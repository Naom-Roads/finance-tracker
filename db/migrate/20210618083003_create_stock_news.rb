class CreateStockNews < ActiveRecord::Migration[6.1]
  def change
    create_table :stock_news do |t|

      t.timestamps
    end
  end
end
