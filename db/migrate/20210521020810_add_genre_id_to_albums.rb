class AddGenreIdToAlbums < ActiveRecord::Migration[6.1]
  def change
    add_column :albums, :genre_id, :integer
    add_index :albums, :genre_id
  end
end
