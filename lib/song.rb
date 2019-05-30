class Song

  @@all = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name

    @artist = artist
    @artist.songs << self
    @artist.genres << genre

    @genre = genre
    @genre.songs << self
    @genre.artists << artist
    
    @@all << self
  end

  def self.all
    @@all
  end


end
