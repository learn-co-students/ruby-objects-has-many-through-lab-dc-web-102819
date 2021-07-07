class Song
    attr_accessor :artist
    attr_reader :genre, :name
    @@all=[]
    def initialize (name, artist, genre)
        @name = name
        @genre = genre
        @artist =artist
        @@all << self
    end

    def self.all
        @@all
    end
end
