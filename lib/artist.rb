class Artist
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def self.all
        @@all
    end

    def songs
       song_array =  Song.all.select do |song|
        song.artist == self
        end
        song_array
    end

    def genres
       self.songs.collect do |song|
        song.genre
        end
    end
    
end