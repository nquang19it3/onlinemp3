class Genre < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :albums, dependent: :destroy
  has_many :artists, dependent: :destroy
  has_one_attached :image

  def thumbnail
    return self.image.variant(resize: '618x180!').processed
  end
end
