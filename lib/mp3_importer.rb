require 'pry'
class MP3Importer
  attr_accessor :files, :path

  def initialize(path)
    @path = path
    @files = get_files
  end

  def get_files
    arr = []
    dir = Dir.open path
    dir.each do |file|
     if file.include?(".mp3")
      arr << file.split("/").last
    end
   end
   arr
 end
end
