class AddKeysTakeFour < ActiveRecord::Migration[5.2]
  def change
    add_column :tests, :user_id, :integer
    add_column :users, :chapter_id, :integer
  end
end
