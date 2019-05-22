require 'uri'
require 'json'
require 'net/http'
require 'tty-prompt'
require 'awesome_print'

prompt = TTY::Prompt.new

uri = URI(prompt.ask("Please enter a valid uri: "))

response = Net::HTTP.get(uri)

info = JSON.parse(response)

ap info
