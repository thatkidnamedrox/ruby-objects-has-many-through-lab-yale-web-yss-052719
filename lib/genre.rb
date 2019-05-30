class Genre

  @@all = []
  attr_reader :artists
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @artist = []
    @@all << self
  end

  def self.all
    @@all
  end


end
