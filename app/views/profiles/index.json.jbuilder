json.array!(@profiles) do |profile|
  json.extract! profile, :id, :member_id
  json.url profile_url(profile, format: :json)
end
