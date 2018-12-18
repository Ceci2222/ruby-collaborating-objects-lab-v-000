require 'pry'
class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name
  end
  
  def artist_name(name)
   self.artist = Artist.find_or_create_by_name(name)
   artist.add_song(self)
  end

#def artist
  
#end

  def self.new_by_filename(f)
    filename = f.split (" - ")
    #binding.pry
    song = self.new(filename[1]) 
    @artist = filename[0]
    artist_name(@artist)
  end
  
end