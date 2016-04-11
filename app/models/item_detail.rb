class ItemDetail < ActiveRecord::Base
  belongs_to :item, dependent: destroy

  validates_associated :item

  serialize :other_img_urls, Array
end
