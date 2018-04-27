class AddTodayIdToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :today_id, :integer
    add_index :courses, :today_id
  end
end
