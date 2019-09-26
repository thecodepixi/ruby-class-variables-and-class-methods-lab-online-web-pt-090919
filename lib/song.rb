class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = [] 
  @@artists = [] 
  
  def initialize(name, artist, genre)
    @@count += 1 
    @@genres << genre 
    @@artists << artist
    @name = name 
    @artist = artist 
    @genre = genre 
  end 
  
  def self.count 
    @@count 
  end 
  
  def genres 
    genres_without_dupes = []
    @@genres.each do |genre|
      if !genres_without_dupes.include?(genre)
        genres_without_dupes << genre 
      end 
    end 
    genres_without_dupes 
  end 
  
  def artists
   artists_without_dupes = []
    @@artists.each do |artist|
      if !artists_without_dupes.include?(artist)
        artists_without_dupes << artist 
      end 
    end 
    artists_without_dupes 
  end 
  
  def genre_count 
    
  end 
  
  def artist_count 
    
  end 
end 