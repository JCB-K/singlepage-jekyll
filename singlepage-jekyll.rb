#!/usr/bin/env ruby

require 'rubygems'
require 'json'

files = Dir.chdir('.') do
  Dir.glob('*.html').map{ |f| f.chomp('.html') }
end

File.open("html.json","w") do |f|
f.write(files.to_json)
end

