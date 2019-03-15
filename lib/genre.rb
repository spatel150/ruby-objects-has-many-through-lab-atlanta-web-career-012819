class Genre 

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
        Song.all.select {|select_song| select_song.genre == self }
    end 

    def artists
        Song.all.map do |song|
            song.artist 
        end 
    end 
end 