class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :artist_stagename
      t.string :artist_realname
      t.string :artist_image
      t.text :artist_description
      t.date :artist_birthday

      t.timestamps
    end
  end
end
