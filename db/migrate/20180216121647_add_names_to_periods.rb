class AddNamesToPeriods < ActiveRecord::Migration[5.1]
  def change
    add_column :periods, :name, :string
  end
end
