require "colorize"

# Prints a text-based "spinner" element while work occurs.
spinner = Enumerator.new do |e|
  loop do
    e.yield '|'.colorize(:green)
    e.yield '/'.colorize(:red)
    e.yield '-'.colorize(:blue)
    e.yield '\\'.colorize(:yellow)
  end
end

1.upto(100) do |i|
  printf("\rSpinner: %s", spinner.next)
  sleep(0.1)
end
