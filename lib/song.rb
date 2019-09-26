require "pry"
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
  
  def self.genres 
    genres_without_dupes = []
    @@genres.each do |genre|
      if !genres_without_dupes.include?(genre)
        genres_without_dupes << genre 
      end 
    end 
    genres_without_dupes 
  end 
  
  def self.artists
   artists_without_dupes = []
    @@artists.each do |artist|
      if !artists_without_dupes.include?(artist)
        artists_without_dupes << artist 
      end 
    end 
    artists_without_dupes 
  end 
  
  def self.genre_count 
    genre_count = {} 
    @@genres.each do |genre|
      if !genre_count.has_key?(genre)
        genre_count[genre] = 1 
      else 
        genre_count[genre] += 1 
      end 
    end 
    genre_count 
  end 
  
  def self.artist_count 
    artist_count = {} 
    @@artists.each do |artist|
      if !artist_count.has_key?(artist)
        artist_count[artist] = 1 
      else 
        artist_count[artist] += 1 
      end 
    end 
  end 
  
end 