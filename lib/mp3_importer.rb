require 'pry'
class MP3Importer
  attr_accessor  :path

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    dir = Dir.open path
    dir.each do |file|
     if file.include?(".mp3")
      @files << file.split("/").last
    end
   end
   @files
 end

 def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
end
