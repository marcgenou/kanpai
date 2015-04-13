class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :experience, index: true
      t.belongs_to :basket, index: true

      t.timestamps null: false
    end
    add_foreign_key :line_items, :experiences
    add_foreign_key :line_items, :baskets
  end
end
