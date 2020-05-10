class RemoveStartLocationFromHikes < ActiveRecord::Migration[6.0]
  def change

    remove_column :hikes, :start_location, :float
  end
end
