class DropAttendances < ActiveRecord::Migration[5.1]
  def change
    drop_table :attendances
  end
end
