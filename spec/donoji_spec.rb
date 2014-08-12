# coding: utf-8
require 'spec_helper'

RSpec.describe Donoji::Tango do
  it "#menは単語を示す" do
    expect(Donoji::Tango.new("積ん読").men).to eql("積ん読")
  end
end
