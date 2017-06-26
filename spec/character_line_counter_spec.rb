require 'character_line_counter'
require 'nokogiri'

RSpec.describe CharacterLineCounter do
  describe '#character_line_count' do
    let(:xml_file_path) { 'spec/fixtures/three_speakers_me_you_all.xml' }
    let(:xml_doc) { File.open(xml_file_path) { |f| Nokogiri::XML(f) } }

    subject { described_class.character_line_count(xml_doc) }

    it { is_expected.to be_a(Hash) }
    it { is_expected.not_to include('ALL') }
    it { is_expected.to include('ME' => 6, 'YOU' => 3) }
  end
end
