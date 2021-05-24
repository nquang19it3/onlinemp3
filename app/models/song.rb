class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :album
  belongs_to :genre
  has_one_attached :image
  has_one_attached :song

  def thumbnail
    return self.image.variant(resize: '94x94!').processed
  end
end
