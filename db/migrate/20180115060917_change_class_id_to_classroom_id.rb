class ChangeClassIdToClassroomId < ActiveRecord::Migration[5.1]

    def change
      rename_column :courses, :class_id, :classroom_id
    end

end
