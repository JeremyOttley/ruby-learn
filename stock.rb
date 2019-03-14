require 'colorize'
require 'iex-ruby-client'

while true do
  up_arrow = "\u2191".colorize(:green)
  down_arrow = "\u2193".colorize(:red)

  stock_change = IEX::Resources::Quote.get('CRON')['change'].to_s

if stock_change.include?("-") == true
  puts down_arrow + stock_change
elsif stock_change.include?("+") == true
  puts up_arrow + stock_change
end
end
