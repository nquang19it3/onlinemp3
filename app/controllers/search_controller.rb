class SearchController < ApplicationController
  layout 'application'
  def index
    @top_result_song = Song.where("song_name LIKE ? ","%#{params[:search]}%").first
    @top_result_artist = Artist.where("artist_stagename LIKE ? ","%#{params[:search]}%").first

    if @top_result_song
      @rs_related_song = Song.where("song_name LIKE ?","%#{params[:search]}%").and(Song.where.not(id: @top_result_song.id)).limit(5)
      @song_data =  Song.where(id: @top_result_song.id).left_outer_joins(:artist).select('songs.*, artists.artist_stageName')
    elsif  @top_result_artist
      @rs_related_artist = Artist.where("artist_stagename LIKE ?","%#{params[:search]}%").and(Song.where.not(id: @top_result_artist.id)).limit(5)
    else
    end
  end
end
