class HomeController < ApplicationController
  def index
    @albums = Album.all
    @genres = Genre.all
    @artists = Artist.all
    @songs = Song.order('RAND()').all
    @partners = Partner.all
    @song_data = @songs.left_outer_joins(:artist).distinct.select('songs.*, artists.artist_stageName')
    @results = Song.where("song_name LIKE ?","%#{params[:search]}%")
  end
end
