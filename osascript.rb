def osascript(script)
  system 'osascript', *script.split(/\n/).map { |line| ['-e', line] }.flatten
end

## USAGE:
#osascript <<-END
# tell application "Finder"
#   display dialog "Hello"
# end tell
#END
