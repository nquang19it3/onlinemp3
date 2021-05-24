class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :song_name
      t.string :song_image
      t.string :song_path

      t.timestamps
    end
  end
end
