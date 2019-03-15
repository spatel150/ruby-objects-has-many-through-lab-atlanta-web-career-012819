class Artist
    
    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end 

    def songs
        Song.all.select {|select_song| select_song.artist == self}
    end 

    def new_song(name, genre) 
        Song.new(name, self, genre)
    end 
        
    def genres
        Song.all.map do |song|
            song.genre
        end 
    end 
end 