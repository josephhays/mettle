json.array!(@cms_shows) do |cms_show|
  json.extract! cms_show, :id
  json.url cms_show_url(cms_show, format: :json)
end
