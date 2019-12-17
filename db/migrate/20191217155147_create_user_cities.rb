class CreateUserCities < ActiveRecord::Migration[5.2]
  def change
    create_table :user_cities do |t|
      t.integer :user_id
      t.integer :city_id

      t.timestamps
    end
  end
end
