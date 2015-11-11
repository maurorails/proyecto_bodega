json.array!(@productos) do |producto|
  json.extract! producto, :id, :descripcion, :cantidad, :fechaingreso, :sku
  json.url producto_url(producto, format: :json)
end
