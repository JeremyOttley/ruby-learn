require "colorize"

# Prints a combination of the progress bar, spinner, and percentage examples.
spinner = Enumerator.new do |e|
  loop do
    e.yield "|".colorize(:green)
    e.yield "/".colorize(:red)
    e.yield "-".colorize(:blue)
    e.yield '\\'.colorize(:yellow)
  end
end

1.upto(100) do |i|
  progress = "=" * (i / 5) unless i < 5
  printf("\rDownloading: [%-20s] %d%% %s", progress, i, spinner.next)
  sleep(0.1)
end
