class RenameTypeToTestType < ActiveRecord::Migration[5.2]
  def change
    rename_column :tests, :type, :test_type
  end
end
