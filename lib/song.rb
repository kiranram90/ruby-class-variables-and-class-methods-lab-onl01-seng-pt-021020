class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @@count += 1 
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genrest << genre
        end
    
    def self.count
      @@count
    end
    
    def self.genres 
      @@genres.uniq
    end
    
    def self.artisits
      @@artists.uniq
    end
    
    def self.genre_count
      genre_count = Hash.new(0)
      @@genres.each {|genre| genre_count[genre] +=1}
      genre_count
end