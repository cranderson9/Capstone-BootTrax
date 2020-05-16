class ChangePictureToString < ActiveRecord::Migration[6.0]
  def change
    change_column :hikes, :pictures, :string
  end
end
