# doesn't break
File.open(ARGV[0], 'w') do |file|
  ARGV.clear # ARGF will always read from ARGV first, so it must be cleared

  ARGF.each do |line|
    puts line
    file.write(line)
  end
end
