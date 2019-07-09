#!/usr/bin/env ruby

require "fileutils"

SOURCE = gets.chomp

DESTINATION = "#{Dir.home}/"

Dir.glob("#{Dir.home}/#{SOURCE}/.", File::FNM_DOTMATCH).each { |f| FileUtils.cp_r("#{f}", DESTINATION, :verbose => true) }

#input example: /test/
