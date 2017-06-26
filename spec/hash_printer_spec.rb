require 'hash_printer'
require 'pry'

RSpec.describe HashPrinter do
  let(:printable) { { one: 1, two: 2, three: 3 } }

  subject { described_class.print_hash(printable) }

  it 'prints lines from hash' do
    expect(STDOUT).to receive(:puts).with('1 one')
    expect(STDOUT).to receive(:puts).with('2 two')
    expect(STDOUT).to receive(:puts).with('3 three')

    subject
  end
end
