class CreateWorldCities < ActiveRecord::Migration
  def change
    create_table :world_cities do |t|
      t.integer :geonameid
      t.string :name
      t.string :asciiname
      t.text :alternatenames
      t.float :latitude
      t.float :longitude
      t.string :feature_class
      t.string :feature_code
      t.string :country_code
      t.string :cc2
      t.string :admin1_code
      t.string :admin2_code
      t.string :admin3_code
      t.string :admin4_code
      t.integer :population
      t.integer :elevation
      t.integer :dem
      t.string :timezone
      t.date :modification_date

      t.timestamps null: false
    end
  end
end
