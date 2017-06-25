require 'downloader'

RSpec.describe Downloader do
  describe '#download_macbeth' do
    let(:url) { 'http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml' }
    let(:macbeth_xml) { '<PLAY>...</PLAY>' }

    it 'downloads the macbeth.xml' do
        allow(Net::HTTP).to receive(:get).with(URI(url)).and_return(macbeth_xml)

        expect(described_class.download_macbeth).to eq(macbeth_xml)
    end
  end
end
