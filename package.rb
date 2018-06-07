require 'colorize'

def package_install_request
	puts "\nEnter package name as it appears in apt-cache"
	print "Package: ".colorize(:yellow)
	pkg = $stdin.gets.chomp

  puts "\nShould the package come from stretch-backports?"
	puts "(Answer no here unless you have a special reason why not.)"
	print "Backports? [y/N]: ".colorize(:yellow)
	bp = $stdin.gets.chomp

	if( bp =~ /^(yes|y)$/i )
		@args = " -t stretch-backports #{pkg}"
	else
		@args = pkg
	end
	return @args
end

package_install_request
