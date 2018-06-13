# Print 1 to 100 percent in place in the console using "dynamic output"
# technique
1.upto(100) do |i|
  printf("\rPercentage: %d%", i)
  sleep(0.1)
end
puts
