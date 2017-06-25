require 'net/http'

class Downloader
  def self.download_macbeth
    Net::HTTP.get(URI('http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml'))
  end
end
