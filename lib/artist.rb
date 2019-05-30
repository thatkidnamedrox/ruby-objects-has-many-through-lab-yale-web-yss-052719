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

  def new_song(song_name, genre_name)
    song = Song.new(song_name, genre_name)
    genre = Genre.new(genre_name)
    song.artist = self
    @songs << song
    @genres << genre
  end

end
