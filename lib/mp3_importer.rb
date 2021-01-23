#parse all the filenames in the spec/fixtures folder
#and send the filenames to the Song class

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    file_list = Dir.entries(@path)
    formatted_file_list = file_list.select {|file| file.end_with? (".mp3")}
  end

  def import
    self.formatted_file_list.each do |file|
      Song.find_or_create_by_name(file)
    end
  end

end
