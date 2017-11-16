class CreateSemesters < ActiveRecord::Migration[5.1]
  def change
    create_table :semesters do |t|
      t.datetime :start
      t.datetime :ending
      t.boolean :flag

      t.timestamps
    end
  end
end
