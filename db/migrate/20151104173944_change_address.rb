class ChangeAddress < ActiveRecord::Migration
  def change
    rename_column :forecasts, :location, :address
  end
end
