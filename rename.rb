def rand_name [length]
  rand(36**length).to_s(36)
end

puts "Renaming files..."

folder_path = Dir.pwd
Dir.glob(folder_path + "/*").sort.each do |f|
    filename = File.basename(f, File.extname(f))
    unless File.extname(f) == ".rb"
      File.rename(f, folder_path + "/" + rand_name + File.extname(f))
  end
end

puts "Renaming complete."
