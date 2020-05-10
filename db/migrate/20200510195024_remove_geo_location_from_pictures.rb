class RemoveGeoLocationFromPictures < ActiveRecord::Migration[6.0]
  def change

    remove_column :pictures, :geo_location, :float
  end
end
