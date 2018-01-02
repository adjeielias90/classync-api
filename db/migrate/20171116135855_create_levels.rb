class CreateLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :levels do |t|
      t.string :name
      t.integer :size
      t.integer :semester_id
      t.boolean :flag

      t.timestamps
    end
  end
end
