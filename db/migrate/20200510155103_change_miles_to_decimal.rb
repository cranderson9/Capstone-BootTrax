class ChangeMilesToDecimal < ActiveRecord::Migration[6.0]
  def change
    change_column :hikes, :miles, :decimal
  end
end
