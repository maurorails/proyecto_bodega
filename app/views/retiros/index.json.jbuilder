json.array!(@retiros) do |retiro|
  json.extract! retiro, :id, :horaretiro, :bodega_id, :vendedor_id
  json.url retiro_url(retiro, format: :json)
end
