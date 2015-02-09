json.array!(@permissions) do |permission|
  json.extract! permission, :id, :nombre, :descripcion
  json.url permission_url(permission, format: :json)
end
