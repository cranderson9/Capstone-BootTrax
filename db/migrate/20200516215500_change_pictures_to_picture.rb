class ChangePicturesToPicture < ActiveRecord::Migration[6.0]
  def change
    rename_column :hikes, :pictures, :picture
  end
end
