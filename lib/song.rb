require 'pry'
class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name
  end
  
  def self.artist_name(name)
   self.artist = Artist.find_or_create_by_name(name)
   artist.add_song(self)
  end

#def artist
  
#end

  def self.new_by_filename(f)
    filename = f.split (" - ")
    #binding.pry
    song = self.new(filename[1]) 
    artist_name(filename[0])
  end
  
end