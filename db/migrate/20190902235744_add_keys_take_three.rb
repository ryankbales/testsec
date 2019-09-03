class AddKeysTakeThree < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :tests, :users, column: :user_id
    add_foreign_key :users, :chapters, column: :chapter_id
  end
end
