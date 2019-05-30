class Artist

  @@all = []
  attr_accessor :name, :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end
  def self.all
    @@all
  end

  def new_song(name, genre)
    genre.songs << song
    genre.artists << self
    song = Song.new(name, self, genre)


    @songs << song
    @genres << genre
  end

end
