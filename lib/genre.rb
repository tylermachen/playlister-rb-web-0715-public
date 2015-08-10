class Genre
  attr_accessor :name, :songs, :artists
  @@instances = []

  def initialize
    @artists = []
    @songs = []
    @@instances << self
  end

  def artists
    @artists = @artists.uniq
  end

  def songs
    @songs
  end

  def self.all
    @@instances
  end

  def self.count
    @@instances.count
  end

  def self.reset_genres
    @@instances.clear
  end
end
