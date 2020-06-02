class SongsController < ApplicationController

 def show
    song = Song.find(params[:id])
    options = {
      include: [:chords]
    }
    
    render json: SongSerializer.new(song, options)
    # render json: song, include: [:chords]
 end

 def create
  song = Song.create(song_params)

  render json: song, include: [:chords]
 end

 def index
  songs = Song.all
  render json: songs, include: [:chords]
 end

 private
 def song_params
   params.require(:song).permit(:name, chords_attributes: [:name, :file, :edit_id])
 end

end
