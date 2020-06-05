class ChordsController < ApplicationController
    def index
        chords = Chord.all[0..18]
        render json: chords
    end
end
