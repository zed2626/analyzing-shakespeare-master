require 'xml_parser'

RSpec.describe XmlParser do
  describe '#parse_xml' do
    let(:xml) { 'any xml string' }

      it 'parses string input to a nokogiri xml document' do
        expect(described_class.parse_xml(xml).class).to eq(Nokogiri::XML::Document)
      end
  end
end
