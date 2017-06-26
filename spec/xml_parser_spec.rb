require 'xml_parser'

RSpec.describe XmlParser do
  describe '#parse_xml' do
    let(:xml) { 'any xml string' }

    subject { described_class.parse_xml(xml).class }

    it { is_expected.to eq(Nokogiri::XML::Document) }
  end
end
