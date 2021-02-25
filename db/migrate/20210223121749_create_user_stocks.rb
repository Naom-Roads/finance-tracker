class CreateUserStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :user_stocks do |t|
      t.references :users, null: false, foreign_key: true
      t.references :stock, null: false, foreign_key: true

      t.timestamps
    end
  end
end
