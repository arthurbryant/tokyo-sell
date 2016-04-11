json.array!(@items) do |item|
  json.extract! item, :id, :category_id, :name, :top_img, :price, :star, :asin
  json.url item_url(item, format: :json)
end
