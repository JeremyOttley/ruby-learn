##: Site Checker with Time Scheduling - An application that attempts to connect to a website or server every so many minutes or a given time and check if it is up. 
# If it is down, it will notify you by email or by posting a notice on screen.

require 'net/http'
require 'open-uri'
require 'tty-prompt'

prompt = TTY::Prompt.new

uri = URI.parse(prompt.ask("Please enter a valid uri: "))
response = Net::HTTP.get_response(uri)

def status(message)
  puts('[' + Time.now.strftime('%X') + '] ' + message)
end


def test_response(response)
  case response
  when Net::HTTPServerError
    status('HTTPServerError')
  when Net::HTTPClientError
    status('HTTPClientError')
  when Net::HTTPRedirection
    status('HTTPRedirection')
  when Net::HTTPSuccess
    status('OK')
  else
    status('UNKNOWN')
  end
end

test_response(response)
