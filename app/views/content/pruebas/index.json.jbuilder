json.array!(@content_pruebas) do |content_prueba|
  json.extract! content_prueba, :id, :nombre, :apellidos
  json.url content_prueba_url(content_prueba, format: :json)
end
