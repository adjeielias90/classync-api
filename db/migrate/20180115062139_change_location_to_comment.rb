class ChangeLocationToComment < ActiveRecord::Migration[5.1]
  def change
    rename_column :courses, :location, :comment
  end
end
