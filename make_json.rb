#!/usr/bin/env ruby

require 'json'

x = []

1000000.times do
  h = {
    'x' => rand,
    'y' => rand,
    'z' => rand,
    'name' => ('a'..'z').to_a.shuffle[0..5].join + ' ' + rand(10000).to_s,
    'opts' => {'1' => [1, true]},
  }
  x << h
end
# This will generate a JSON file of around 212mb
File.open("1.json", 'w') { |f| f.write JSON.pretty_generate('coordinates' => x, 'info' => "some info") }
