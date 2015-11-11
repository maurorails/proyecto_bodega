json.array!(@vendedors) do |vendedor|
  json.extract! vendedor, :id, :nombre, :apellido, :codigovendedor
  json.url vendedor_url(vendedor, format: :json)
end
