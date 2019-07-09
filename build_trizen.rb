#!/usr/bin/env ruby

## TODO
# Fully convert to ruby

## GEMS ##

require "mkmf"
require "shell"

shell = Shell.new

## METHODS ##

# equal to pacaur -Syu --noconfirm # --noedit?
def install(p)
  `trizen -Syu --noconfirm #{p}`
end

# builds trizen
def build_trizen
  `pushd ~/bin` # shell.pushd '/.bin'
  `git clone https://aur.archlinux.org/trizen-git.git`
  `cd trizen-git` # Dir.chdir('trizen-git/')
  `makepkg -si # sudo?`
  `popd` # shell.popd
end

def which_trizen
  find_executable "trizen" # If found, it will return the full path, including the executable name, of where it was found.
end

## MAIN ##

unless which_trizen # does this return true? or something else?
  build_trizen
else
  packages.each { |p| install(p) }
end
