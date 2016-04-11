class CreateItemDetails < ActiveRecord::Migration
  def change
    create_table :item_details do |t|
      t.references :item, index: true, foreign_key: true
      t.text :description, null: false
      t.text :other_img_urls

      t.timestamps null: false
    end
  end
end
