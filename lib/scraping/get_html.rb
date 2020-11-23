require 'nokogiri'
require 'open-uri'

class GetHtml
  def self.run(url)
    begin
      raise StandardError.new 'url should not be empty' if url == ''
    rescue StandardError => e
      puts e.message
    end

    doc = Nokogiri::HTML(URI.open(url))

    return doc
  end
end
