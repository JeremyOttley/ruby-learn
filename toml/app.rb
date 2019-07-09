#!/usr/bin/env ruby

require "toml"
require "pp"

path = File.join(File.dirname(__FILE__), "config/config.toml")

config = TOML.load_file(path)

config.each { |k, v| puts "Current #{k} is #{v}" }

#pp config
