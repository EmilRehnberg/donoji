RSpec.describe Donoji::MainichiWordSearcher do
  let(:searcher) { Donoji::MainichiWordSearcher.new("い") }

  it "responds to #letter" do
    expect(searcher.letter).to eql("い")
  end

  it "adds words to matches after search" do
    expect(searcher.matches).to include(Donoji::Word.new("ない", "458482"))
  end
end
