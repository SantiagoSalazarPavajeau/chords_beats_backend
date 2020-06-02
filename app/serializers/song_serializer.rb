class SongSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :chords
end
