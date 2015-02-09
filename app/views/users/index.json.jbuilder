json.array!(@users) do |user|
  json.extract! user, :id, :Nombre, :Apellido, :Cedula, :Email
  json.url user_url(user, format: :json)
end
