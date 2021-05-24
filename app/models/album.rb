class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs, dependent: :destroy
  belongs_to :genre
  has_one_attached :image

end
