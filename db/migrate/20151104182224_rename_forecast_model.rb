class RenameForecastModel < ActiveRecord::Migration
  def change
    rename_table :forecasts, :weathers
  end
end
