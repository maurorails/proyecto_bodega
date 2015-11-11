json.array!(@bodegas) do |bodega|
  json.extract! bodega, :id, :columna, :fila, :producto_id
  json.url bodega_url(bodega, format: :json)
end
