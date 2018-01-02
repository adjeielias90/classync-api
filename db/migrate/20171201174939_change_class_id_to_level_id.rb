class ChangeClassIdToLevelId < ActiveRecord::Migration[5.1]
  def change
    rename_column("students", "class_id","level_id" )
  end
end
