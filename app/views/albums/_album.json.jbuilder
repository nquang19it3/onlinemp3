json.extract! album, :id, :album_name, :album_description, :created_at, :updated_at
json.url album_url(album, format: :json)
