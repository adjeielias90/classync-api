class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :code
      t.string :location
      t.integer :class_id
      t.integer :state_id
      t.integer :period_id
      t.boolean :flag

      t.timestamps
    end
  end
end
