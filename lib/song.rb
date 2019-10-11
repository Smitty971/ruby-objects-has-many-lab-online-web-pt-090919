class Song
attr_accessor :name, :artist
@@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs
    @songs
    @@all
  end

  def self.all
    @@all
  end

  def artist_name
    self.artist.name
  end

end
