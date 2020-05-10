class RemoveEndLocationFromHikes < ActiveRecord::Migration[6.0]
  def change

    remove_column :hikes, :end_location, :float
  end
end
