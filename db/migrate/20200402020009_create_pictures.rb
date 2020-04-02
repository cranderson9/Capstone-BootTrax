class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.integer :user_id
      t.integer :hike_id
      t.string :picture_file
      t.string :comments
      t.float :geo_location

      t.timestamps
    end
  end
end
