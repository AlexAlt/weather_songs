class CreateForecasts < ActiveRecord::Migration
  def change
    create_table :forecasts do |t|
      t.string "location"
      t.float "latitude"
      t.float "longitude"
      
      t.timestamps
    end
  end
end
