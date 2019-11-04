require 'pry'
class Artist

    attr_reader :name
    attr_accessor :songs, :new_song

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select do |songs| 
            songs.artist == self
        end
    end

    def genres
        self.songs.collect do |song|
            song.genre
        end
    end

end
