json.array!(@items) do |item|
  json.id item.id
  json.body item.body
  json.list_id item.list_id
end
