class Artist

  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end
  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, genre)

  end
end
