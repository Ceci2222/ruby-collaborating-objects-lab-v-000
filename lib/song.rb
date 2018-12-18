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

  def self.new_by_filename(f)
    filename = f.split (" - ")
    song = self.new(filename[1]) 
    binding.pry
    artist_name(filename[0])
  end
  
end