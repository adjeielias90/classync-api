class RecreateAttendanceTable < ActiveRecord::Migration[5.1]
  def change
    puts 'LOL its nothing important, just making sure my code works'
    puts '***Frying Your Server***'
    puts 'Just Kidding, Updating Database....Present => False, Recreating dropped table because of my ignorance'
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
