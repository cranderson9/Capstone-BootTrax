class ChangeTotalMilesToDecimal < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :total_miles, :decimal
  end
end
