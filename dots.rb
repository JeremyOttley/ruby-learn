#!/usr/bin/env ruby

require 'fileutils'

dest = Dir.home

Dir.glob(".dots/*") { |f| FileUtils.cp(f, dest, :verbose => true) }

## MORE DETAILED VERSION: ##

#!/usr/bin/env ruby

# LIBS

require 'pathname'
require 'fileutils'

# VARS

DOT_PATH = Pathname.new("/home/gazbit/.dots")
DOT_REPO = "Gazaunga/.dots"

# FUNCS

def grab_dots
`git clone https://github.com/#{DOT_REPO}`
end

def main
grab_dots
FileUtils.chdir(DOT_PATH, :verbose => true)
Dir.glob("*").each { |f| puts f }
end

## MAIN SCRIPT ##

main
