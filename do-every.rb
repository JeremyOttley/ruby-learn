def interval(seconds)
  loop do
    sleep(seconds)
    yield
  end
end

interval(2) { puts "Hello!" }
