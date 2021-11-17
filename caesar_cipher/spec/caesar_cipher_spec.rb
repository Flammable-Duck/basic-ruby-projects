require_relative './spec_helper'
require_relative '../caesar_cipher'

describe CaesarCipher do
  let!(:cipher) { CaesarCipher.new }
  describe 'encodes message' do
    it "returns an 'encrypted' string, shifted by the specified amount of characters" do
      message = "This is a very secret message!"
      expect(cipher.encode(message, 1)).to eq("Uijt jt b wfsz tfdsfu nfttbhf!")
    end

    it "works with negative numbers" do
      message = "This is a very secret message!"
      expect(cipher.encode(message, -7)).to eq("Mabl bl t oxkr lxvkxm fxlltzx!")
    end
  end
end
