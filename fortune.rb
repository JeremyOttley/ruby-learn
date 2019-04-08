require 'nokogiri'
require 'open-uri'
require 'thor'
require 'pp'

SCORPIO_URI = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/SCORPIO.html"))
ARIES_URI = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/ARIES.html"))
TAURUS_URI = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/TAURUS.html"))
GEMINI_URI = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/GEMINI.html"))
CANCER_URI = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/CANCER.html"))
LEO_URI = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/LEO.html"))
VIRGO_URI = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/VIRGO.html"))
LIBRA_URI = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/LIBRA.html"))
SAGITTARIUS_URI = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/SAGITTARIUS.html"))
CAPRICORN_URI = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/CAPRICORN.html"))
AQUARIUS_URI = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/AQUARIUS.html"))
PISCES_URI = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/PISCES.html"))

ARIES_DAILY = ARIES_URI.css("p")
TAURUS_DAILY = TAURUS_URI.css("p")
GEMINI_DAILY = GEMINI_URI.css("p")
CANCER_DAILY = CANCER_URI.css("p")
LEO_DAILY = LEO_URI.css("p")
VIRGO_DAILY = VIRGO_URI.css("p")
LIBRA_DAILY = LIBRA_URI.css("p")
SAGITTARIUS_DAILY = SAGITTARIUS_URI.css("p")
CAPRICORN_DAILY = CAPRICORN_URI.css("p")
AQUARIUS_DAILY = AQUARIUS_URI.css("p")
PISCES_DAILY = PISCES_URI.css("p")
SCORPIO_DAILY = SCORPIO_URI.css("p")

class MyCLI < Thor
  desc "fortune SIGN", "Fetch daily"
  def fortune(sign)
    case sign
      when /scorpio/i
        pp SCORPIO_DAILY[0].text.strip
      when /aries/i
        pp ARIES_DAILY[0].text.strip
      when /taurus/i
        pp TAURUS_DAILY[0].text.strip
      when /gemini/i
        pp GEMINI_DAILY[0].text.strip
      when /cancer/i
        pp CANCER_DAILY[0].text.strip
      when /leo/i
        pp LEO_DAILY[0].text.strip
      when /virgo/i
        pp VIRGO_DAILY[0].text.strip
      when /libra/i
        pp LIBRA_DAILY[0].text.strip
      when /sagittarius/i
        pp SAGITTARIUS_DAILY[0].text.strip
      when /capricorn/i
        pp CAPRICORN_DAILY[0].text.strip
      when /aquarius/i
        pp AQUARIUS_DAILY[0].text.strip
      when /pisces/i
        pp PISCES_DAILY[0].text.strip
      end
  end
end

MyCLI.start(ARGV)
