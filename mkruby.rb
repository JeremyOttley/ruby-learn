#!/usr/bin/env ruby

require 'fileutils'

filename = ARGV[0]
language = ARGV[1]

File.open("#{filename}.rb", "a+") do |f|
script = <<-EOS
#!/usr/bin/env #{language}


EOS
f.write(script)
# FileUtils.chmod "#{filename}.rb", "0755", :verbose => true 
end
