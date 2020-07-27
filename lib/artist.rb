class Artist
  attr_accessor :name, :genres
  @@all = []
  @@genres = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, artist = self, genre)
    self.genres << genre
    song
    songs << self
  end

  def songs
    songs = Song.all.select {|song| song.artist == self}
    songs
  end

  def genres
    @@genres #.select do |genre| genre.artist == self
    #end
  end

end
