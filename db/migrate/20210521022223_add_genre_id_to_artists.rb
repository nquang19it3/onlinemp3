class AddGenreIdToArtists < ActiveRecord::Migration[6.1]
  def change
    add_column :artists, :genre_id, :integer
    add_index :artists, :genre_id
  end
end
