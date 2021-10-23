json.extract! participante, :id, :nombre, :app_paterno, :app_materno, :email, :evento_id, :created_at, :updated_at
json.url participante_url(participante, format: :json)
