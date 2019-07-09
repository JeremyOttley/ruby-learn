require "colorize"

# Prints a text-based "spinner" element while work occurs.
spinner = Enumerator.new do |e|
  loop do
    e.yield "|".colorize(:green)
    e.yield "/".colorize(:red)
    e.yield "-".colorize(:blue)
    e.yield '\\'.colorize(:yellow)
  end
end

1.upto(1000) do |i|
  printf("\r%s", spinner.next)
  sleep(0.1)
end
