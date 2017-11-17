class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.boolean :cancelled
      t.boolean :postponed
      t.boolean :ongoing
      t.boolean :pending
      
      t.timestamps
    end
  end
end
