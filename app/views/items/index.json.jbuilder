json.array!(@items) do |item|
  json.extract! item, :id, :model, :purchase_date, :description
  json.url item_url(item, format: :json)
end
