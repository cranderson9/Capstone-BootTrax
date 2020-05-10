class AddNameToHikes < ActiveRecord::Migration[6.0]
  def change
    add_column :hikes, :name, :string
  end
end
