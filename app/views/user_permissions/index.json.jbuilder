json.array!(@user_permissions) do |user_permission|
  json.extract! user_permission, :id, :user_id, :permision_id
  json.url user_permission_url(user_permission, format: :json)
end
