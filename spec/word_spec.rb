RSpec.describe Donoji::Word do
  let(:word){ Donoji::Word.new("積ん読", 3) }

  it "responds to #face" do
    expect(word.face).to eql("積ん読")
  end

  it "responds to #hits" do
    expect(word.hits).to eql(3)
  end
end
