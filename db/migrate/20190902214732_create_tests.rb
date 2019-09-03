class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.datetime :date
      t.string :type

      t.timestamps
    end
  end
end
