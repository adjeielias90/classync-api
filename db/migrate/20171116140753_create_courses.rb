class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :code
      t.string :location
      t.datetime :time
      t.boolean :flag

      t.timestamps
    end
  end
end
