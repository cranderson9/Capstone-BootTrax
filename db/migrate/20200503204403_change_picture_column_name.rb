class ChangePictureColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :hikes, :picture_id, :pictures
  end
end
