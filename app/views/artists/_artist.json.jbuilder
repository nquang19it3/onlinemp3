json.extract! artist, :id, :artist_stagename, :artist_realname, :artist_image, :artist_description, :artist_birthday, :created_at, :updated_at
json.url artist_url(artist, format: :json)
