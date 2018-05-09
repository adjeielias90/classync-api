class RemoveUsernameFromStudents < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :username
  end
end
