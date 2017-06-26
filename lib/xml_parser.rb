require 'nokogiri'

class XmlParser
  def self.parse_xml(xml)
    Nokogiri::XML(xml)
  end
end
