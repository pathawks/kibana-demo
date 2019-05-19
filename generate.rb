require "Time"
require_relative "Index"
require_relative "Log"

i = Index.new

l = Log.new
l.timestamp = Time.parse('2012-01-30')
l.message = "message 1"

puts i
puts l

m = Log.new
m.timestamp = Time.parse('2012-02-01')
m.message = "message 2"

puts i
puts m
