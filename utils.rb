#!/usr/bin/env ruby

#require 'fileutils'
#require 'pathname'

##=UTILS=##

def chdir(dir)
  puts Dir.pwd

  Dir.chdir(dir) do
    puts Dir.pwd
  end
end

#=> chdir("lib/")
