class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artist = []
  @@genre = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genre << genre
    @@artist << artist

  end

  def self.count
    @@count
  end
  def self.genre
    @@genre.uniq
  end

  def self.genre_count
    genres_hash = {}
    @@genre.each do |name|
        if genres_hash[name]
          genres_hash[name] += 1
        else
          genres_hash[name] = 1
        end
      end
      genres_hash
  end

end
