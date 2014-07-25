require "rubygems"
require "mp3info"
module MusicHelper
  def get_info(file)
    Mp3Info.open(file) do |mp3info|
	  abort mp3info
	end
  end
end