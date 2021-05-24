class Artist < ApplicationRecord
  has_many :songs
  has_one_attached :image
  has_many :albums, dependent: :destroy
  belongs_to :genre
  
  def thumbnail
    return self.image.variant(resize: '94x94!').processed
  end
end
