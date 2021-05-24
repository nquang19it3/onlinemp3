json.extract! song, :id, :song_name, :song_image, :song_path, :created_at, :updated_at
json.url song_url(song, format: :json)
