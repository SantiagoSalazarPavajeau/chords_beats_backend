class SongSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :chords

  def chords
    object.chords
  end
end
