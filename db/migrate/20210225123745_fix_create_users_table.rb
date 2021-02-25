class FixCreateUsersTable < ActiveRecord::Migration[6.1]
  def change
    rename_column :user_stocks, :users_id, :user_id
  end
end
