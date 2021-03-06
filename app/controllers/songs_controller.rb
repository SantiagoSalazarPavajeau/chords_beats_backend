class SongsController < ApplicationController

 def show
    song = Song.find(params[:id])
    options = {
      include: [:chords]
    }
    render json: SongSerializer.new(song, options).serialized_json
    # render json: song, include: [:chords]
 end

 def create
  song = Song.create(song_params)
  render json: SongSerializer.new(song).serialized_json
 end

 def index
  songs = Song.all
  options = {
    is_collection: true,
    # include: [:chords]
  }
  render json: SongSerializer.new(songs).serialized_json
  # render json: songs, include: [:chords]
 end

 def destroy
  song = Song.find(params[:id])
  song.chords.each do |chord|
    chord.delete
  end
  song.delete
  songs = Song.all
  render json: SongSerializer.new(songs).serialized_json
 end

 private
 def song_params
   params.require(:song).permit(:name, chords_attributes: [:name, :file, :edit_id])
 end

end
