class CreateMyLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :my_locations do |t|
      t.integer :lon
      t.integer :lat

      t.timestamps
    end
  end
end
