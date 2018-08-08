require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new(name)
    song.name = filename.split(" - ")[1]
    song.artist = filename.split(" - ")[0]
    song
    binding.pry
  end
end
