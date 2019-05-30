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
    puts name
    puts genre.inspect
    song = Song.new(name, self, genre)
    genre.songs << song
    genre.artists << self

    puts genre.inspect

    @songs << song
    @genres << genre
  end

end
