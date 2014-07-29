require 'rubygems'
require 'open-uri'
# require 'stringio'
# require 'net/http'
# require 'uri'
require 'mp3info'

module MusicHelper
  def get_info(url)
 #    Mp3Info.open(file) do |mp3info|
	#   abort mp3info
	# end
	# uri = 'http://evguen-less.s3.amazonaws.com' + url
	# file = open(uri)
	# Mp3Info.open(open(uri)) do |mp3|
	# 	puts mp3.tag.title   
	# 	puts mp3.tag.artist   
	# 	puts mp3.tag.album
	# 	puts mp3.tag.tracknum
	# end
# 	url = URI.parse(url) # turn the string into a URI
# 	http = Net::HTTP.new(url.host, url.port) 
# 	req = Net::HTTP::Get.new(url.path) # init a request with the url
# 	req.range = (0..4096) # limit the load to only 4096 bytes
# 	res = http.request(req) # load the mp3 file
# abort res.body
# 	child = {} # prepare an empty array to store the metadata we grab
# 	Mp3Info.open( StringIO.open(res.body) ) do |m|  #do the parsing
# 	    child['title'] = m.tag.title 
# 	    child['album'] = m.tag.album 
# 	    child['artist'] = m.tag.artist
# 	    child['length'] = m.length 
# 	end
# 	child
# 	url = URI.parse('http://evguen-less.s3.amazonaws.com' + url) # turn the string into a URI
# 	http = Net::HTTP.new(url.host, url.port) 
# 	req = Net::HTTP::Get.new(url.path) # init a request with the url
# 	req.range = (0..4096) # limit the load to only 4096 bytes
# 	res = http.request(req) # load the mp3 file
# abort res
# 	child = {} # prepare an empty array to store the metadata we grab
# 	Mp3Info.open( StringIO.open(res.body) ) do |m|  #do the parsing
# 	    child['title'] = m.tag.title 
# 	    child['album'] = m.tag.album 
# 	    child['artist'] = m.tag.artist
# 	    child['length'] = m.length 
# 	end
# 	abort child

	# bucket = AWS::S3::Bucket.find(EvguenLes::Application::BUCKET)
	# song = AWS::S3::S3Object.find(url, EvguenLes::Application::BUCKET)
	# s3object = bucket.objects(prefix: url.to_s)
	# song = s3object.find(file_name)
	# abort debug(song.to_file.path)
  end
  def base_path(file_name)
  	File.basename(file_name, ".*")
  end
end