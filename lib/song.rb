class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count = @@count + 1
    @@genres.push(genre)
    @@artists.push(artist)

  end

  def self.count
    return @@count
  end

  def self.genres
    uniq_genres = @@genres.uniq
    return uniq_genres
  end

  def self.artists
    uniq_artists = @@artists.uniq
    return uniq_artists
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

end
