require 'pry'
class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name
  end
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

#def artist
  
#end

  def self.new_by_filename(f)
    filename = f.split (" - ")
    binding.pry
    song = self.new(filename[1]) 
    song.artist = filename[0]
  end
  
end