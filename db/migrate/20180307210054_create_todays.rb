class CreateTodays < ActiveRecord::Migration[5.1]
  def change
    create_table :todays do |t|
      t.string :day

      t.timestamps
    end
  end
end
