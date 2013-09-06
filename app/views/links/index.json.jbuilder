json.array!(@links) do |link|
  json.extract! link, :href, :title, :user_id
  json.url link_url(link, format: :json)
end
