class DeleteStatus < ActiveRecord::Migration[6.0]
  def change
    remove_column :hikes, :status, :string
  end
end
