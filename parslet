require 'parslet'

class Date < Parslet::Parser

  rule(:digit) { match("[0-9]") }
  
  rule(:datetime) do
    digit.repeat(4) >> str("-") >>
    digit.repeat(2) >> str("-") >>
    digit.repeat(2)>> str("T") >>
    digit.repeat(2) >> str(":") >>
    digit.repeat(2) >> str(":") >>
    digit.repeat(2) >> str("z")
  end
    
  root(:datetime)
  
end

begin
  puts Date.new.parse("1988-10-30T06:56:00Z")
rescue Parslet::ParseFailed => e
  puts e.cause.ascii_tree
end
