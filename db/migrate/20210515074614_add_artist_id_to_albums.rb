class AddArtistIdToAlbums < ActiveRecord::Migration[6.1]
  def change
    add_column :albums, :artist_id, :integer
    add_index :albums, :artist_id
  end
end
