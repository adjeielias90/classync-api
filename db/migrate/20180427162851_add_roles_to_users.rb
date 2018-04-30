class AddRolesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :lecturer_role, :boolean, default: false
    add_column :users, :student_rep_role, :boolean, default: false
    add_column :users, :student_role, :boolean, default: true
  end
end
