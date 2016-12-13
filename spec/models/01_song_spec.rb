describe 'Song' do
  before do
    @song = Song.create(name: "Forever")
    @genre = Genre.create(name: 'pop')
    @genre.songs << @song
  end

  after do
    clean_database
  end

  it 'has a name' do
    expect(Song.where(name: "Forever").first).to eq(@song)
  end

  it 'has a genre_id' do
    expect(@song.genre_id).to eq(1)
  end

end
