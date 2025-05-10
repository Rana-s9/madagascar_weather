class AddTempMinAndTempMaxToWeathers < ActiveRecord::Migration[7.2]
  def change
    add_column :weathers, :temp_min, :float
    add_column :weathers, :temp_max, :float
  end
end
