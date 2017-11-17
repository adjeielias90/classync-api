class CreateLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :levels do |t|
      t.string :name
      t.integer :size
      t.boolean :flag

      t.timestamps
    end
  end
end
