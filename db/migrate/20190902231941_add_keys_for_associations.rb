class AddKeysForAssociations < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :tests, :users
    add_foreign_key :users, :chapters
  end
end
