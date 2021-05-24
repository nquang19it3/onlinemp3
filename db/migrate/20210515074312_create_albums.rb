class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :album_name
      t.text :album_description

      t.timestamps
    end
  end
end
