class CreateWorldCities < ActiveRecord::Migration
  def change
    create_table :world_cities do |t|
      t.string :country
      t.string :city
      t.string :accentcity
      t.integer :region
      t.integer :population
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
