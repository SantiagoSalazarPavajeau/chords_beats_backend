# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


synth_wave = Song.create(name: "Synthwave")

a = Chord.create(name: "Am", file: "assets/chords/Am.wav ", edit_id: 11, song: synth_wave)
c = Chord.create(name: "C", file: "assets/chords/C.wav ", edit_id: 22, song: synth_wave)
em = Chord.create(name: "Em", file: "assets/chords/Em.wav ", edit_id: 33, song: synth_wave)
f = Chord.create(name: "F", file: "assets/chords/F.wav ", edit_id: 44, song: synth_wave)

# chord_data = ["A.wav", "Ab.wav", "Am.wav", "B.wav", "Bb.wav", "Bm.wav", "C.wav", "Cm.wav", "D.wav", "Db.wav", "Dm.wav", "E.wav", "Eb.wav", "Em.wav", "F.wav", "Fm.wav", "G.wav", "Gb.wav", "Gm.wav"]
# chords = []
# chord_data.each do |chord|
#     chords << Chord.create(name: chord[0..-5], file: "assets/chords/#{chord} ", edit_id: rand(1000), song: synth_wave)
# end
# order by created at in the controller or in the model