class AdminController < ApplicationController
  layout "dashboard"
  def index
    @albums = Album.all 
    @songs = Song.all
    @artists = Artist.all
    @topsongs = Song.order(created_at: :desc).limit(5)
    @newsongs = Song.order(created_at: :desc).all 
  end
end
