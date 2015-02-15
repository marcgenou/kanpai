class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :category
      t.text :description
      t.string :image_url
      t.decimal :price
      t.string :season
      t.date :date
      t.string :duration
      t.string :tags

      t.timestamps null: false
    end
  end
end
