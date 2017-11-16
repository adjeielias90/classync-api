class CreatePeriods < ActiveRecord::Migration[5.1]
  def change
    create_table :periods do |t|
      t.datetime :time
      t.boolean :flag

      t.timestamps
    end
  end
end
