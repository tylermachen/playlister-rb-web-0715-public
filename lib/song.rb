class Song
  attr_accessor :name, :artist, :genre

  def genre=(genre)
    @genre = genre
    @genre.songs << self
  end
end
