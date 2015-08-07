describe "Song" do
  it "can initialize a song" do
    expect(Song.new).to be_an_instance_of(Song)
  end

  it "can have a name" do
    song = Song.new
    song.name = "Deep Blue Country Road"
    expect(song.name).to eq("Deep Blue Country Road")
  end

  it "can have a genre" do
    song = Song.new
    song.name = "Deep Blue Country Road"
    song.genre = Genre.new.tap { |g| g.name = 'folk' }
    expect(song.genre).to eq(song.genre)
  end

  it "has an artist" do
     song = Song.new
     song.name = "Deep Blue Country Road"
     song.artist = "A.A. Bondy"
     expect(song.artist).to eq("A.A. Bondy")
  end
end
