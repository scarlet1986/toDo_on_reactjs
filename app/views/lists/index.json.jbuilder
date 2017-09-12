json.array!(@lists) do |list|
  json.id list.id
  json.user_id list.user_id
  json.title list.title
end
