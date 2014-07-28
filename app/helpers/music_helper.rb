require 'rubygems'
require 'open-uri'
require 'stringio'
require 'net/http'
require 'uri'
require 'mp3info'

module MusicHelper
  def get_info(url)
 #    Mp3Info.open(file) do |mp3info|
	#   abort mp3info
	# end
	# abort request.domain + url
	url = URI.parse(url) # turn the string into a URI
	http = Net::HTTP.new(url.host, url.port) 
	req = Net::HTTP::Get.new(url.path) # init a request with the url
	req.range = (0..4096) # limit the load to only 4096 bytes
	res = http.request(req) # load the mp3 file
	child = {} # prepare an empty array to store the metadata we grab
	Mp3Info.open( StringIO.open(res.body) ) do |m|  #do the parsing
	    child['title'] = m.tag.title 
	    child['album'] = m.tag.album 
	    child['artist'] = m.tag.artist
	    child['length'] = m.length 
	end
	abort child
  end
end