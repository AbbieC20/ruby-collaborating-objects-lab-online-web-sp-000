#parse all the filenames in the spec/fixtures folder
#and send the filenames to the Song class

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    #call the array i.e. path
    #remove the end of the array which shows the directory path
  end

  def import
  end

end

#Dir.entries('./spec/fixtures/mp3s')
