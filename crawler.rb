require 'nokogiri'
require 'open-uri'

class Crawler
  def initialize(url)
    @url = url
  end

  def crawl
    begin
      doc = Nokogiri::HTML(URI.open(@url))
      links = extract_links(doc)
      print_links(links)
    rescue OpenURI::HTTPError => e
      puts "Failed to open URL #{@url}, Error: #{e.message}"
    rescue SocketError => e
      puts "Network error trying to access URL #{@url}, Error: #{e.message}"
    rescue Exception => e
      puts "Error: #{e}"
    end
  end

  def extract_links(doc)
    # find hyplerlinks in the document via css selector looking for 'a' tags
    # compact removes nil values from the array
    doc.css('a').map { |link| link['href'] }.compact.uniq
  end

  def print_links(links)
    puts "Links found in #{@url}"
    links.each { |link| puts link }
  end
end

url = 'https://www.google.com'
crawler = Crawler.new(url)
crawler.crawl


url = 'https://www.coinbase.com'
crawler = Crawler.new(url)
crawler.crawl