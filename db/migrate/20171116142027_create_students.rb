class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.integer :reference_number
      t.integer :index_number
      t.string :image_url

      t.timestamps
    end
  end
end
