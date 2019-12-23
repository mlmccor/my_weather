class ChangeLongitueToFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :cities, :longitude, :float
  end
end
