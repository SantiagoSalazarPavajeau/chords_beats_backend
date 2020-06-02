class ChordSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :file, :edit_id
end
