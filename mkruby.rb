#!/usr/bin/env ruby

filename = ARGV[0]
language = ARGV[1]

File.open("#{filename}.rb", "a+") do |f|
script = <<-EOS
#!/usr/bin/env #{language}

EOS
f.write(script)
end
