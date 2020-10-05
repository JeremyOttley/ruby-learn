require 'fileutils'
filenames = Dir.glob("*.jpg")
    
filenames.each do |filename|
    File.rename(filename, filename.gsub(/Screenshot_\d{8}-/, '')) # Screenshot_20200911-picnic_01.jpg -> picnic_01.jpg
end
