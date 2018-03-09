#!/usr/bin/env ruby

require 'toml'
require 'pp'

path = File.join(File.dirname(__FILE__), "config/config.toml")

obj = TOML.load_file(path)

obj.each { |k,v| puts "Current #{k} is #{v}" }

#pp obj
