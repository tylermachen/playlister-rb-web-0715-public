require_relative '../config/environment'

class Artist
  attr_accessor :name, :songs, :genres
  @@instances = []

  def initialize
    @name = name
    @songs = []
    @genres = []
    @@instances << self
  end

  def add_song(song)
    @songs << song
    @genres << song.genre
    song.genre.artists << self if song.genre
  end

  def self.all
    @@instances
  end

  def self.count
    @@instances.count
  end

  def self.reset_artists
    @@instances.clear
  end
end
