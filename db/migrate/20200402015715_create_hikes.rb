class CreateHikes < ActiveRecord::Migration[6.0]
  def change
    create_table :hikes do |t|
      t.integer :user_id
      t.float :start_location
      t.float :end_location
      t.string :status
      t.integer :miles
      t.string :notes

      t.timestamps
    end
  end
end
