class ChangeCoordsToFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :cities, :latitude, :float
    change_column :cities, :longitude, :text
  end
end
