class CreateWeathers < ActiveRecord::Migration[7.2]
  def change
    create_table :weathers do |t|
      t.string :city_name    # 都市名
      t.float :latitude      # 緯度
      t.float :longitude     # 経度
      t.float :temperature   # 温度
      t.float :humidity      # 湿度
      t.float :rain_probability  # 降水確率
      t.string :weather_description  # 天気の説明（例: "clear sky"）

      t.timestamps
    end
  end
end
