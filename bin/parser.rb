#!/usr/bin/env ruby

require './lib/formatter.rb'
require './lib/counter.rb'

counter = Counter.new
counter.store_pages(ARGV[0])
counter.count_visits
counter.unique_views
