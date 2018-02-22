class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.boolean :present, default: false
      t.integer :student_id
      t.integer :period_id
      t.integer :course_id
      t.integer :today_id

      t.timestamps
    end
  end
end
