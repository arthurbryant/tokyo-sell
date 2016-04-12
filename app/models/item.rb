class Item < ActiveRecord::Base
  has_one :item_detail

  validates_presence_of :category_id, :name, :top_img_url, :price, :star, :asin
  validates :category_id, numericality: {only_integer: true}
  validates :price, numericality: {only_integer: true, greater_than: 0}
  validates :star, numericality: true
end
