class AddLevelIdToCourse < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :level_id, :integer
  end
end
