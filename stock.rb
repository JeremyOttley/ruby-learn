require 'pp'
require 'colorize'
require 'iex-ruby-client'

up_arrow = "\u2191".colorize(:green)

down_arrow = "\u2193".colorize(:red)

stock_data_hash = IEX::Resources::Quote.get('CRON')

stock_change = stock_data_hash['change'].to_s

if stock_change.include?("-") == true
  puts down_arrow
elsif stock_change.include?("+") == true
  puts up_arrow
end
