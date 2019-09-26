class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  
  def initialize(name, artist, genre)
    @@count += 1 
    @@genres << genre 
    @@artists << artist
    @name = name 
  end 
  
  def genres 
    @@genres = [] 
  end 
  
  def artists
    @@artists = [] 
  end 
  
  def genre_count 
    
  end 
  
  def artist_count 
    
  end 
end 