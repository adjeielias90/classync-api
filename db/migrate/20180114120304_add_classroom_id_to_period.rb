class AddClassroomIdToPeriod < ActiveRecord::Migration[5.1]
  def change
    add_column :periods, :classroom_id, :integer
  end
end
