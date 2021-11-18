require 'spec_helper'
require_relative '../substrings'

RSpec.describe 'Substrings' do
  let!(:dictionary) {["below","down","go","going","horn","how","howdy",\
                      "it","i","low","own","part","partner","sit"]}

  it 'return a hash of each substring' do
    expect(substrings("below", dictionary)).to eq({ "below" => 1, "low" => 1 })
  end

  it 'can handle multiple words' do
    input_string= "Howdy partner, sit down! How's it going?"
    result = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1,\
        "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
    expect(substrings(input_string, dictionary)).to eq(result)
  end
end
