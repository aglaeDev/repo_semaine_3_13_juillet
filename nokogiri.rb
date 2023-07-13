require 'rubygems'
require 'nokogiri' 
require 'open-uri'
require 'restclient'

page = Nokogiri::HTML(open("index.html"))   
puts page.class   # => Nokogiri::HTML::Document

page = Nokogiri::HTML(open("http://en.wikipedia.org/"))   
puts page.class   # => Nokogiri::HTML::Document

page = Nokogiri::HTML(RestClient.get("http://en.wikipedia.org/"))   
puts page.class   # => Nokogiri::HTML::Document