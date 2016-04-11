class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :category_id, null: false
      t.string :name, null: false
      t.string :top_img_url, null: false, limit: 2083
      t.integer :price, null: false
      t.float :star, null: false
      t.string :asin, null: false

      t.timestamps null: false
    end
  end
end
