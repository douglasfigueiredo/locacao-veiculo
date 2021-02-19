json.extract! veiculo, :id, :marca_id, :nome, :cor, :qnt_lugares, :placa, :valor, :created_at, :updated_at
json.url veiculo_url(veiculo, format: :json)
