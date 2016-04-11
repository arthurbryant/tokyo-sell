json.array!(@item_details) do |item_detail|
  json.extract! item_detail, :id, :item_id, :description, :other_imgs
  json.url item_detail_url(item_detail, format: :json)
end
