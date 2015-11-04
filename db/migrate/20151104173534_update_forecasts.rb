class UpdateForecasts < ActiveRecord::Migration
  def change
    enable_extension 'hstore'
    add_column :forecasts, :response, :hstore, default: {}, null: false
  end
end
