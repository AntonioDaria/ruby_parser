#!/usr/bin/env ruby

require './lib/formatter.rb'
require './lib/counter.rb'

counter = Counter.new
counter.store_pages(ARGV[0])

puts "Below the number of times a page has been viewed:"
counter.count_visits
puts "Below the number of times a page has received uique viwes:"
counter.unique_views
