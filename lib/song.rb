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
   @@genres.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
 end 

end
